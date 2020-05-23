#!/bin/bash
cp -f ./.build_ErfanGSIs_empty.yml ./build_ErfanGSIs.yml
cat ./.build_ErfanGSIs_part1.yml >> ./build_ErfanGSIs.yml
cat ./.build_ErfanGSIs_part2.yml >> ./build_ErfanGSIs.yml
cat ./.build_ErfanGSIs_part3.yml >> ./build_ErfanGSIs.yml
