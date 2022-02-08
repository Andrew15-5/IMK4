#!/bin/bash

extract_books() {
  for archive in "${archives_array[@]}"; do
    dir=$(dirname "$archive")
    unzip -u "$archive" -d "$dir" | grep -v "^Archive: "
  done
}

go_to_dir_with_this_script() {
  cd "$(dirname "$0")" || exit 1
}

link_files() {
  semester=$(basename "$PWD" | grep -oP '\d')
  dir="$PWD"
  cd ..
  for i in {1..4}; do
    ((i == semester)) && continue
    ln -f "semester$semester/$(basename "$0")" semester$i/
  done
  cd "$dir" || exit 1
}

make_sure_apt_package_is_installed() {
  installed=$(apt list --installed 2>&1 | grep -cP "^$1/")
  if (( installed == 0 )); then
    echo "installing $1..."
    if [[ $(sudo apt -y install "$1" > /dev/null 2>&1) ]]; then
      echo "$1 was successfully installed."
    else
      echo "There was a problem installing $1. Aborting..." 1>&2
      exit 1
    fi
  fi
}

make_sure_archives_exist() {
  archives_array=($(find . -type f -name "*.zip"))
  archives_count=${#archives_array[@]}
  if (( archives_count == 0 )); then
    echo "Didn't find any archive."
    exit
  fi
}

remove_books() {
  find books -type f | grep -v zip | xargs -d'\n' rm -rf
}

go_to_dir_with_this_script
link_files
if [[ "$1" =~ ^-r|--remove$ ]]; then
  remove_books
  exit
fi
make_sure_archives_exist
make_sure_apt_package_is_installed unzip
extract_books
