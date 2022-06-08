#!/bin/bash

generate-md --layout github --input ./content --output ./output

rsync -rv ./output/* github@val3k.me:/var/www/val3k.me
