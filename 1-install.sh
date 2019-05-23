#!/bin/bash

pip install opencv-python Pillow
apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0 
apt-get install youtube-dl ffmpeg
sudo rm -r  pix2pix-tensorflow
git clone https://github.com/affinelayer/pix2pix-tensorflow.git
mkdir pix2pix-tensorflow/data
mkdir pix2pix-tensorflow/data/input
mkdir pix2pix-tensorflow/data/output
mkdir pix2pix-tensorflow/data/model

git clone https://github.com/hardikvasa/google-images-download.git
cd google-images-download && python setup.py install
cd ..
sudo rm -r google-images-download
