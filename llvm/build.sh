#!/bin/sh

set -ev

#docker build -t step21/clang-lanai-flat .
docker run -v $(pwd):/mnt -t step21/clang-lanai-flat clang --target=lanai -S /mnt/"$@"
docker run -v $(pwd):/mnt -t step21/clang-lanai-flat clang --target=lanai -c /mnt/"$@"

