#!/bin/bash
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

#pip install requirments