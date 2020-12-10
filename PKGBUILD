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
md5sums=(78dfd554d061268f4674099d1aa98bfc 0e080f7e6d03ba2acb08dc6268f4efff)
validpgpkeys=()

package() {
install -Dm755 "$srcdir"/radio_bash /usr/bin/radio_bash
install -Dm644 "$srcdir"/radios "$HOME"/.config/bashradio/radios
}
