#!/bin/bash

in=$1
out=$2
convert "$in" -crop 1850x558+0+189 "$out"
