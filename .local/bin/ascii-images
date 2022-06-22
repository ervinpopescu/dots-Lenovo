#!/bin/bash

for i in ~/Pictures/Wallpapers/rand/* 
do
  ascii-image-converter -b -C "$i" 
  cols=$(tput cols)
  for i in $(seq 1 $cols); do echo -n "~" ;done
  sleep 3
done
