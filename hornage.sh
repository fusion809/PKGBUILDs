#!/bin/bash
export PKG="$HOME/GitHub/mine/packaging/PKGBUILDs"
export EPKG=$(printf ${PKG} | sed 's/\//\\\//g')

function hornin {
  if [[ -d $PKG ]]; then
    if `find $PKG -maxdepth 1 -name "$2" | sed "s/$EPKG//g" | sort > /dev/null 2>&1`; then
      cd $PKG/$2
        makepkg -sif --noconfirm
      cd -
    else
      yaourt -S $1
    fi
  fi
}

if [[ $1 == "install" ]]; then
yaourt -Syu --noconfirm pi
