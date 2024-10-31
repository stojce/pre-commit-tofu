#!/usr/bin/env bash

function common::get_tf_binary_path {
  if command -v tofu &> /dev/null; then
    command -v tofu
    return

  else
    common::colorify "red" "OpenTofu binary could be found."
    exit 1
  fi
}

tofu_path=$(common::get_tf_binary_path)

if [ -z "$tofu_path" ]; then
  echo "tofu not found 1"
  exit 1
fi

$tofu_path -h &> /dev/null
if [ $? -ne 0 ]; then
  echo "tofu not found 2"
  exit 1
fi

$tofu_path fmt -recursive -list=false
