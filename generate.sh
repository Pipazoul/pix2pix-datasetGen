rm pix2pix-tensorflow/data/input/*
find 3-final/ -type f -print0 | xargs -0 mv -t pix2pix-tensorflow/data/input/

python  pix2pix-tensorflow/pix2pix.py \
  --mode test \
  --output_dir pix2pix-tensorflow/data/output \
  --input_dir pix2pix-tensorflow/data/train \
  --checkpoint pix2pix-tensorflow/data/model