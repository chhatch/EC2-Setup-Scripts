#!/bin/bash

#to ec2 server
rsync -avz -e "ssh -i $1" ~/.vim ubuntu@$2:./
cat ~/.vimrc | ssh -i $1 ubuntu@$2 "cat>> .vimrc"
