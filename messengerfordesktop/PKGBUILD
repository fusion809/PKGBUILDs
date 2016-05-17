# Maintainer: Michael Corrigan <ghost.vonage AT gmail DOT com>
# Contributor: tomsik68	<tomsik68 AT gmail DOT com>
# Contributor: gandl <gandlspam AT gmail DOT com>
# Contributor: Jristz <prflr88 AT gmail DOT com>
# Upstream URL: http://messengerfordesktop.com/

pkgname=messengerfordesktop
_pkgname=Facebook-Messenger-Desktop
pkgver=1.4.7
pkgrel=1
pkgdesc="Beautiful desktop client for Facebook Messenger. Chat without being distracted by your feed or notifications."
arch=('i686' 'x86_64')
url="http://messengerfordesktop.com/"
license=('MIT')
options=(!strip)
depends=('cairo' 'libxtst' 'alsa-lib' 'gtk2' 'gconf' 'libnotify' 'fontconfig' 'nss')
install=$pkgname.install
depends=('gcc-libs' 'cairo' 'libxtst' 'alsa-lib' 'gtk2' 'gconf' 'libnotify' 'fontconfig' 'nss' 'xorg-xprop' 'xorg-xwininfo')
makedepends=('git' 'gulp' 'npm')
source=("https://github.com/Sytten/$_pkgname/archive/v$pkgver.tar.gz"
				"start.sh")
md5sums=('SKIP'
         'ce686652299792c01f4605cf995c4d87')
install="$pkgname.install"

if [ $(uname -m) == "i686" ]
 then
  _arch="linux32"
else
  _arch="linux64"
fi

build() {
  cd $_pkgname-$pkgver
  npm install

  gulp build:${_arch}
}

package() {
	install -D -m755 "${srcdir}/start.sh"	  "${pkgdir}/opt/MessengerForDesktop/start.sh"

  cd "${srcdir}/$_pkgname-$pkgver/build/Messenger/${_arch}"
  mkdir -p "${pkgdir}/opt/MessengerForDesktop/"
  install -D -m755 "Messenger"    "${pkgdir}/opt/MessengerForDesktop/Messenger"
  install -D -m644 "nw.pak"       "${pkgdir}/opt/MessengerForDesktop/nw.pak"
  install -D -m644 "icudtl.dat"   "${pkgdir}/opt/MessengerForDesktop/icudtl.dat"
  install -D -m644 "libffmpegsumo.so"   "${pkgdir}/opt/MessengerForDesktop/libffmpegsumo.so"

  cd "${srcdir}/$_pkgname-$pkgver/assets-linux"
	sed -i '6s/.*/Exec=sh \/opt\/MessengerForDesktop\/start.sh/' messengerfordesktop.desktop
  install -D -m644 "${srcdir}/$_pkgname-$pkgver/assets-linux/messengerfordesktop.desktop" "${pkgdir}/usr/share/applications/messengerfordesktop.desktop"
  install -D -m644 "icons/256/messengerfordesktop.png"     "${pkgdir}/usr/share/pixmaps/messengerfordesktop.png"
  install -Dm644 $srcdir/$_pkgname-$pkgver/LICENSE $pkgdir/usr/share/licenses/messengerfordesktop/LICENSE
}
