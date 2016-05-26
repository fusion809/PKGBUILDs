# Maintainer: Brenton Horne <brentonhorne77 at gmail dot com>

_pkgname=Shadow
pkgname=shadow-icon-theme
pkgver=1.7.5
pkgrel=1
arch=('any')
pkgdesc="A flat colourful icon theme for GNOME 3.10+"
url="http://gnome-look.org/content/show.php/${_pkgname}?content=170398"
source=("https://github.com/rudrab/${_pkgname}/archive/v${pkgver}.tar.gz")
license=('GPL')
sha256sums=('d058336fb022484025c56ad642ff523b25650eb385d639979d6554e55bfb3737')

package() {
  mkdir -p $pkgdir/usr/share/icons/
  cp -a "$srcdir/${_pkgname}-${pkgver}" "$pkgdir/usr/share/icons/${_pkgname}"
}
