#!/bin/sh
# VERSION 1.4 14/11/2019

SRC_DIR=/media/CHANGE_ME/
DST_DIR=/media/CHANGE_ME/BACKUP

./rclone32   --skip-links --filter-from  filter_pic.txt  copy  $SRC_DIR  $DST_DIR/PICTURES
./rclone32   --skip-links --filter-from  filter_doc.txt  copy  $SRC_DIR  $DST_DIR/DOCUMENTS
./rclone32   --skip-links --filter-from  filter_mus.txt  copy  $SRC_DIR  $DST_DIR/MUSIC
./rclone32   --skip-links --filter-from  filter_vid.txt  copy  $SRC_DIR  $DST_DIR/VIDEOS

