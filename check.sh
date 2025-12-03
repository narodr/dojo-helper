#!/bin/bash

# Ejecuta un problema y compara su salida con la esperada
#
# bash check.sh <ref>
# donde <ref> suele ser a, b, c...


SCRIPT="problem/$1.py"
INPUT="input/$1.txt"
OUTPUT="output/$1.txt"


if [[ ! -f "$INPUT" ]]; then
    echo "Input file '$INPUT' not found."
    exit 1
fi

if [[ ! -f "$OUTPUT" ]]; then
    echo "Output file '$OUTPUT' not found."
    exit 1
fi

RESULT=$(python3 "$SCRIPT" < "$INPUT")
DIFF=$(printf "%s\n" "$RESULT" | diff - "$OUTPUT")

if [[ -n "$DIFF" ]]; then
    printf "%s\n" "$RESULT"
    echo && echo "diff:"
    printf "\e[31m%s\e[0m\n" "$DIFF"
else
    printf "\e[32m%s\e[0m\n" "$RESULT"
fi