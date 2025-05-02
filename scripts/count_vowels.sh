#! /usr/bin/env bash
#!/bin/bash

# sample.txt 파일에서 모음 개수 세기
filename="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/sample.txt"

if [[ ! -f $filename ]]; then
  echo "파일이 존재하지 않습니다: $filename"
  exit 1
fi

count=$(grep -o '[aeiouAEIOU]' "$filename" | wc -w)
echo "Total vowels: $count"

