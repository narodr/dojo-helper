#!/bin/bash

# Crea los archivos necesarios para un problema
#
# bash new.sh <ref>
# donde <ref> suele ser a, b, c...

SCRIPT="$1.py"
INPUT="input/$1.txt"
OUTPUT="output/$1.txt"

mkdir -p input
touch "$INPUT"

mkdir -p output
touch "$OUTPUT"

cp template.py "$SCRIPT"
