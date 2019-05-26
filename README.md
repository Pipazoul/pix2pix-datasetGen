# pix2pix-glicth generator

WIP

c#TODO
- preprocess.py does not work anymore

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

> git clone https://github.com/Pipazoul/pix2pix_glitch_generator.git

sh install.sh

### GPU

## To Use

### Get images
googleimagesdownload -k keyword -o 1-input -n

### Process the images
>sh prepare_dataset.sh 

Put your pictures in the 1-input folder and in a terminal launch
> sh prepare_dataset.sh

### Train
> sh train.sh

### Test
> sh generate.sh

#### Complie sequence of images to video
ffmpeg -r 60 -f image2 -s 200x200 -i 2-process_%04d-outputs.png -vcodec libx264 -crf 25  -pix_fmt yuv420p render.mp4

# FAQ

If error "libSM.so.6: cannot open shared object file"

## Nvidia Docker
> apt-get install -y libsm6 libxext6 libxrender-dev

or docker

> apt-get install libglib2.0-0