
function global::get_tofu_path {
  if command -v tofu &> /dev/null; then
    command -v tofu
    return

  else
    common::colorify "red" "OpenTofu binary could be found."
    exit 1
  fi
}
