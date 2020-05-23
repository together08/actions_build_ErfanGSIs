#!/bin/bash
# Yamlmaker of actions_build_ErfanGSIs
# Copyright (C) 2020, Linuxbckp
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
rm -f ./r*
read -p "DO you want to submit this yaml file? (y/N)" SUBMIT
if [[ "$SUBMIT" == 'y' ]]; then
    cp -f ./build_ErfanGSIs.yml ../.github/workflows/build_ErfanGSIs.yml
fi
read -p "DO you want to delete this yaml file? (y/N)" DELETE
if [[ "$DELETE" == 'y' ]]; then
    rm -f ./build_ErfanGSIs.yml
    exit 0
fi
