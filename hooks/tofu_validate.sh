#!/usr/bin/env bash

source "$(dirname "$0")/global.sh"

tofu_path=$(global::get_tofu_path)

if [ -z "$tofu_path" ]; then
  echo "tofu not found 1"
  exit 1
fi

$tofu_path -h &> /dev/null
if [ $? -ne 0 ]; then
  echo "tofu not found 2"
  exit 1
fi

$tofu_path validate
