#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
  echo -e "Please provide package name to build\nUsage: docker run --rm -v \$(pwd):/pkg maximbaz/arch-build-aur /bin/bash -c '/build.sh <package>'"
  exit 1
fi

set -e
package=$1

cd /build
sudo -u makepkg git clone --depth 1 https://aur.archlinux.org/$package.git
cd $package
sudo -u makepkg makepkg --noconfirm -s

mv $package*.pkg.tar.xz /pkg
