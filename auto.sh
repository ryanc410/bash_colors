#!/usr/bin/env bash

mv .bash_colors ~/.bash_colors

cat << _EOF_ >> ~/.bashrc
if [ -f .bash_colors ]; then
  . .bash_colors
fi
_EOF_
