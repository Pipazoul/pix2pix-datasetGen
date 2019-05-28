#!/bin/bash
mkdir 1-input 2-process 3-final
pip install opencv-python Pillow
apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0 
apt-get install youtube-dl ffmpeg
rm -r  pix2pix-tensorflow
git clone https://github.com/affinelayer/pix2pix-tensorflow.git
mkdir pix2pix-tensorflow/data
mkdir pix2pix-tensorflow/data/input
mkdir pix2pix-tensorflow/data/output
mkdir pix2pix-tensorflow/data/model
mkdir pix2pix-tensorflow/data/train

git clone https://github.com/hardikvasa/google-images-download.git
cd google-images-download && python setup.py install
cd ..
rm -r google-images-download
