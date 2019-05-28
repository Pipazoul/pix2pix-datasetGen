#Export video to image series
ffmpeg -i "vid.mkv" video/output/out-%03d.jpg

#Cleans every folder just in case
rm -r 1-input/*
rm -r 2-process/*
rm -r 3-final/*

mv video/* 1-input

sh prepare_dataset.sh

