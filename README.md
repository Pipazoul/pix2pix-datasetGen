# Workshop pix2pix-glicth generator

WIP

#TODO
- Config file 
- A global start 
- ftp upload ?

This script crops an input image and generate a side by side image for pix2pix

**Input**
![Input](medias/input.jpg)

**Output**
![Input](medias/output.jpg)


The preprocess script comes from https://github.com/memo/webcam-pix2pix-tensorflow

## Requirements
 - Python
 - Numpy
 - CV2
 - PIL

## Install 
Idealy inside a docker image


### CPU
> docker run --rm -ti --name pix2pix -v /home/yassin/Documents/pix2pix_glitch_generator/mount:/root  tensorflow/tensorflow bash

> apt update

> apt install git
>apt install git

>git clone https://github.com/Pipazoul/pix2pix_glitch_generator.git

>sh install.sh

### GPU

TODO

## To Use

### 1 - Download lots of images (8000 at least)

You can use googleimagedownload for example

>googleimagesdownload -k keyword -o 1-input -n

### 2- Process the images
The pictures need to be 
Put your pictures in the 1-input folder and in a terminal launch
> sh prepare_dataset.sh

### 2 - Train
> sh train.sh
It will move the files from 3-final to pix2pix/data/input and start the training

### 3- Get ref media 
>youtube-dl -o 1-input youtube_url 



### Export all frames from video and process them
>ffmpeg -i pathToVideo outputPath

> sh process_media.sh



### 3 - Test
> sh generate.sh

#### Compile sequence of images to video

move the -output*.png files only

and compile

>ffmpeg -framerate 30 -pattern_type glob -i '*.png'   -c:v libx264 -r 30 -pix_fmt yuv420p ../out.mp4


# FAQ

If error "libSM.so.6: cannot open shared object file"

## Nvidia Docker
> apt-get install -y libsm6 libxext6 libxrender-dev

or docker

> apt-get install libglib2.0-0