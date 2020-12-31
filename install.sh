#!/bin/bash
cd /content/
rm -rf darknet
git clone https://github.com/roboflow-ai/darknet.git

rm /content/darknet/Makefile
cp /content/penDetect/Makefile /content/darknet/
cd /content/darknet/
make



# 향후 바꾸세요.
base_path="/content/drive/MyDrive/Lec_Capture/_data/yolo_v4"
# url = "https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.conv.137"
# filename = join(base_path, "yolov4.conv.137")
# get_file(filename, url,extract=True)

# 향후 바꾸세요.
# !cp /content/drive/MyDrive/Lec_Capture/_data/yolo_v4/yolov4.conv.137 ./

wget https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.conv.137
curl -L "https://app.roboflow.com/ds/s3uZB23NSu?key=jV6b59KDFH" > roboflow.zip
unzip roboflow.zip
rm roboflow.zip

cd /content/darknet/
cp train/_darknet.labels data/obj.names
[ ! -d data/obj ]&&mkdir data/obj
#copy image and labels
cp train/*.jpg data/obj/
cp valid/*.jpg data/obj/

cp train/*.txt data/obj/
cp valid/*.txt data/obj/
