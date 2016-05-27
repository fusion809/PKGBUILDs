#!/bin/zsh
for i in */
do
	cd "$i"
	pkgver=$(sed -n 's/pkgver=//p' PKGBUILD)
	pkgrel=$(sed -n 's/pkgrel=//p' PKGBUILD)
	makepkg -sfC --noconfirm || printf "Building $i-$pkgver-$pkgrel failed!"
	du $i-$pkgver-$pkgrel.pkg.tar.xz > namcap-pkg.log
	namcap $i-$pkgver-$pkgrel.pkg.tar.xz >> namcap-pkg.log
	namcap PKGBUILD >> namcap-pkgbuild.log
	cd -
done
