python pix2pix-tensorflow/pix2pix.py \
  --mode train \
  --output_dir pix2pix-tensorflow/data/model \
  --max_epochs 200 \
  --input_dir pix2pix-tensorflow/data/input \
  --which_direction BtoA \
  --display_freq 50 \
  #--checkpoint pix2pix-tensorflow/data/model