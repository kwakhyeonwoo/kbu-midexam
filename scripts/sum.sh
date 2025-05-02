#!/usr/bin/env bash

# 숫자가 하나도 없는 경우
if [ $# -eq 0 ]; then
  echo "No numbers provided"
  exit 1
fi

sum=0
for num in "$@"; do
  sum=$((sum + num))
done

echo "$sum"
