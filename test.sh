#!/bin/zsh
for i in "*/"
do
	cd "$i"
	pkgver=$(sed -n 's/pkgver=//p' PKGBUILD)
	pkgrel=$(sed -n 's/pkgrel=//p' PKGBUILD)
	updpkgsums
	makepkg -sfC --noconfirm || printf "Building $i-$pkgver-$pkgrel failed!"
	du "*$pkgver-$pkgrel*.pkg.tar.xz" > namcap-$pkgver-$pkgrel-pkg.log
	namcap "*$pkgver-$pkgrel*.pkg.tar.xz" >> namcap-$pkgver-$pkgrel-pkg.log
	namcap PKGBUILD >> namcap-$pkgver-$pkgrel-pkgbuild.log
	cd -
done
