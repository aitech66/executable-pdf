# About

Embeds linux executable (elf) or script (python, perl, bash, etc) into a pdf file and executes it when the pdf is opened by pdf reader. 
Supported pdf readers:

* [Evince](https://github.com/GNOME/evince)
* [Okular](https://github.com/KDE/okular)
* [Xpdf](https://www.xpdfreader.com/download.html)
* [Zathura](https://github.com/pwmt/zathura)
* [Mupdf](https://github.com/ArtifexSoftware/mupdf)

Architecture: x86_64

# Usage

```bash
bash embed.sh [executable_to_embed] [target_pdf] 
```

## Example

Embed a bash script `myscript.sh` (executable) into a pdf file `cookbook.pdf`: 

```bash
chmod +x myscript.sh
bash embed.sh myscript.sh cookbook.pdf
```

The script is a single one-liner:

```bash
#!/bin/bash

# This is myscript.sh
echo "Hello, World" > /tmp/hello.txt
```

When opened with Evince, the pdf will execute the script and will create a `hello.txt` file in `/tmp` folder.

# Acknowledgements

The idea was 100% inspired by https://phrack.org/issues/71/10.html#article


<pre>
  \  |           _)       
 |\/ |  _` |  __| |  _` | 
 |   | (   | |    | (   | 
_|  _|\__,_|_|   _|\__,_| 
                          
 |  /             
 ' /   _ \\ \   / 
 . \  (   |\ \ /  
_|\_\\___/  \_/   
</pre>
