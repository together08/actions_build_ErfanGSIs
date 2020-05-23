#!/bin/bash
cp -f ./.build_ErfanGSIs_empty.yml ./build_ErfanGSIs.yml
cat ./.build_ErfanGSIs_part1.yml >> ./build_ErfanGSIs.yml
# read url
read -p "Press any key to input ROM_URL" ROM_URL
cp -f ./.rom_url ./rom_url
nano ./rom_url
cat ./rom_url >> ./build_ErfanGSIs.yml
cat ./.build_ErfanGSIs_part2.yml >> ./build_ErfanGSIs.yml
read -p "Press any key to input ROM_NAME" ROM_NAME
cp -f ./.rom_name ./rom_name
nano ./rom_name
cat ./rom_name >> ./build_ErfanGSIs.yml
cat ./.build_ErfanGSIs_part3.yml >> ./build_ErfanGSIs.yml
read -p "DO you want to submit this yaml file? (y/N)" SUBMIT
if [[ "$SUBMIT" == 'y' ]]; then
    rm -f ./r*
    exit 0
fi
