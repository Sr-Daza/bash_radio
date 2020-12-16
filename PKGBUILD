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
md5sums=('546a6b4a0973d89866f23f161123f0ae' '024e34610af8e4b0854b5509c91c1e23')
validpgpkeys=()

package() {
install -Dm755 "$srcdir"/radio_bash "$pkgdir"/usr/bin/radio_bash
install -Dm644 "$srcdir"/radios "$HOME"/.config/bashradio/radios
}
