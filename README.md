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

### Get images from google
googleimagesdownload -k keyword -o 1-input -n

### 1- Process the images
Put your pictures in the 1-input folder and in a terminal launch
> sh prepare_dataset.sh

### 2 - Train
> sh train.sh
It will move the files from 3-final to pix2pix/data/input and start the training

### 3- Get ref media and process
youtube-dl -o 1-input youtube_url 

> sh process_media.sh

### 3 - Test
> sh generate.sh

#### Complie sequence of images to video
ffmpeg -r 60 -f image2 -s 200x200 -i 2-process_%04d-outputs.png -vcodec libx264 -crf 25  -pix_fmt yuv420p render.mp4

# FAQ

If error "libSM.so.6: cannot open shared object file"

## Nvidia Docker
> apt-get install -y libsm6 libxext6 libxrender-dev

or docker

> apt-get install libglib2.0-0