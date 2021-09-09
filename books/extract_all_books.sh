#!/bin/bash

function check_folder_name() {
  SCRIPT_FILE_NAME="extract_all_books.sh"
  current_folder=`pwd | sed 's/.*\///'`
  if [[ "$current_folder" != "books" ]]; then
    echo This script is in the wrong folder.
    echo Please move $SCRIPT_FILE_NAME to IMK4/books/
    exit
  fi
}

function check_script_file_name() {
  actual_script_file_name=`echo "$0" | sed 's/.*\///'`
  if [[ "$actual_script_file_name" != "$SCRIPT_FILE_NAME" ]]; then
    echo
    echo "Why did you change the name of this script file?"
  fi
}

function extract_books() {
  for archive in "${archives_list[@]}"; do
    archive_dir=`echo "$archive" | grep -oP '.*/'`
    unzip "$archive" -d "$archive_dir"
  done
}

function make_sure_archives_exist() {
  archives_list=(`find . -type f -name *.zip`)
  archives_count=${#archives_list[@]}
  if (( archives_count == 0 )); then
    echo "Didn't find any archive."
    exit
  fi
}

function make_sure_located_in_correct_dir() {
  path_to_script=`echo "$0" | grep -oP '.*/'`
  cd "$path_to_script"
}

function make_sure_apt_package_is_installed() {
  installed=`apt list --installed 2>&1 | grep -P "^$1/" | wc -l`
  if (( installed == 0 )); then
    echo installing $1...
    if [[ `sudo apt -y install $1 > /dev/null 2>&1` ]]; then
      echo $1 was successfully installed.
    else
      echo There was a problem installing $1. Aborting.
      exit
    fi
  fi
}

make_sure_located_in_correct_dir
check_folder_name
make_sure_archives_exist
make_sure_apt_package_is_installed unzip
extract_books
check_script_file_name
