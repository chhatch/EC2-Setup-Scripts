#!/bin/bash

mkdir ~/$1
cd ~/$1
mkdir .git
cd .git
git init --bare
echo "#!/bin/sh
GIT_WORK_TREE=/home/ubuntu/ $1
export GIT_WORK_TREE
git checkout -f" > hooks/post-receive
chmod +x hooks/post-receive
