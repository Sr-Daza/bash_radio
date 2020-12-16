# Maintainer: SrDaza <youremail@domain.com>
pkgname=Radio_bash
pkgver=0.0.1
pkgrel=1
#epoch=
pkgdesc="Radio en terminal mediante bash y mpv"
arch=(x86_64)
url=""
license=('GPL')
groups=()
depends=('mpv' 'libnotify' 'figlet')
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("https://github.com/Sr-Daza/bash_radio/blob/main/radio_bash" "https://github.com/Sr-Daza/bash_radio/blob/main/radios")
noextract=()
md5sums=('bcb713179b556caac0ed41829f1d527179700fb8' '51d45b96d78a66712a5ef3df1b66ea88af5d3cf4')
validpgpkeys=()

package() {
install -Dm755 "$srcdir"/radio_bash "$pkgdir"/usr/bin/radio_bash
install -Dm644 "$srcdir"/radios "$HOME"/.config/bashradio/radios
}
