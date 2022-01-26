#!/bin/bash


# End the script immediately if any command or pipe exits with a non-zero status.
set -euo pipefail

_clone_repository () {
  git clone https://github.com/josuezambrano/menu-template.git menu-template
  cd menu-template/ &> /dev/null
  mv src/* . &> /dev/null
  rm -f build.sh &> /dev/null
  rm -rf .git/ &> /dev/null
  rm -rf docs/ &> /dev/null
  rm -rf src/ &> /dev/null
}
_clone_repository