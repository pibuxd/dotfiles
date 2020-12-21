#!/bin/sh
# Simple script to show what is my next lesson in High School

GREEN='\033[0;32m'
next=$(curl -s "https://sabat.dev/api/nxt?c=2g&grp=2HD1,2Am2,Ch%C5%82opcy&notext=Wolne")
printf "%%{F#98C379}"
echo "$next"
