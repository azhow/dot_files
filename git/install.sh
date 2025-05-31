#!/bin/bash

TARGET_CONF=~/.gitconfig

echo "Time for setup!"

ln -s "$(pwd)/.gitconfig" $TARGET_CONF

echo "All done!"
