# imagesSpace
A bash script that reduces the quality of multiple images until they take less than a given space.

## installation

```bash
wget https://raw.githubusercontent.com/CarloRamponi/imagesSpace/master/imagesSpace.sh
```

## Use

Before running the script you'll have to **install imageMagick**
You'll have to run the script in **the folder where all the images are stored** (there have to be **only the images**, no other files, no folders)
It will create a folder (**../small**) with all the resized images inside it.

```bash
chmod +x imagesSpace
./imagesSpace maxBytes;
```
