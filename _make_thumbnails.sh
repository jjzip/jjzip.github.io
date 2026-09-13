#!/bin/bash
# 生成论文列表用的缩略图。页面显示宽度 160px，这里做到 400px 是为了 2 倍屏清晰。
# 会覆盖已有文件，加图后直接重跑即可。
mkdir -p tn/images
for file in images/*.jpg images/*.png; do
    [ -e "$file" ] || continue
    magick "$file" -filter Lanczos -resize 400x400 -strip "tn/$file"
done
