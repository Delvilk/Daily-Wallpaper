#!/bin/bash

# 获取当前日期
date=$(date +%Y-%m-%d)

# 获取Bing每日一图的链接
url=$(curl -s "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1" | jq -r '.images[0].url')

# 拼接链接
link="https://www.bing.com$url"

# 追加到文件
echo "[$date]$link" >> wallpaper.txt
