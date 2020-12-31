#!/bin/bash
cd /content/
rm -rf darknet
git clone https://github.com/roboflow-ai/darknet.git

rm /content/darknet/Makefile
cp /content/penDetect/Makefile /content/darknet/
cd /content/darknet/
make
