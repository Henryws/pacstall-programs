name="kvantum"
pkgname="kvantum"
version="0.17.0"
url="https://github.com/tsujan/Kvantum/releases/download/V0.17.0/Kvantum-0.17.0.tar.xz"
license="GPL"
build_depends="g++ cmake"
depends="libx11-dev qtbase5-dev libqt5svg5-dev libqt5x11extras5-dev libkf5windowsystem-dev"
gives="kvantum"
breaks="qt5-style-kvantum"

prepare() {
          cd Kvantum
          mkdir build && cd build
}

build() {
        cmake -j$(nproc) ..
        make -j$(nproc)
}

install() {
          sudo porg -lp kvantum "make install"
}
