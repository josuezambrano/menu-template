#!/bin/bash


# End the script immediately if any command or pipe exits with a non-zero status.
set -euo pipefail

check_is_folder_exists() {
  if [ -d "./unleashed-menu" ]; then
    echo "Error: 'unleashed-menu' already exists😕"
    exit 1
  fi
}

clone_repository() {
  git clone --quiet https://github.com/josuezambrano/menu-template.git unleashed-menu
}

clean_folder() {
  rm -f unleashed-menu/build.sh
  rm -rf unleashed-menu/.git
  rm -rf unleashed-menu/docs
  mv unleashed-menu/src/unleashed-menu/* unleashed-menu/
  rm -rf unleashed-menu/src
}

echo "Building...🔨"

check_is_folder_exists
clone_repository
clean_folder

echo "Menu template created succesfully🥳"
