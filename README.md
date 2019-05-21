# pix2pix-glicth generator

WIP

#TODO
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


## To Use

### Get images
googleimagesdownload -k keyword -o 1-input -n



Put your pictures in the 1-input folder and in a terminal launch
> sh start.sh 