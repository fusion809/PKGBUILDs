#!/bin/zsh
for i in */
do
	cd "$i"
	updpkgsums
	du *.pkg.tar.xz > namcap-pkg.log
	namcap *.pkg.tar.xz >> namcap-pkg.log
	namcap PKGBUILD >> namcap-pkgbuild.log
	cd -
done
