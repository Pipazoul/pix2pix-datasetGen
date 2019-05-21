#!/bin/bash
sudo rm -r  pix2pix-tensorflow
git clone https://github.com/affinelayer/pix2pix-tensorflow.git
mkdir pix2pix-tensorflow/data
mkdir pix2pix-tensorflow/data/input
mkdir pix2pix-tensorflow/data/output
mkdir pix2pix-tensorflow/data/model