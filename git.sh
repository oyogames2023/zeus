#!/bin/bash

# 获取未加入版本控制的文件列表
untracked_files=$(git status --porcelain | grep '^??' | cut -c4-)

# 获取修改的文件列表
modified_files=$(git status --porcelain | grep '^ M' | cut -c4-)

# 获取删除的文件列表
deleted_files=$(git status --porcelain | grep '^ D' | cut -c4-)

# 输出结果，或者将它们保存到需要的变量中
echo "未加入版本控制的文件："
echo "$untracked_files"

echo "修改的文件："
echo "$modified_files"

echo "删除的文件："
echo "$deleted_files"
