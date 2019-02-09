FROM archlinux/base:latest

RUN pacman -Sy --noconfirm git

VOLUME /pkg /build

RUN useradd -d /build makepkg
COPY sudoers /etc/sudoers

ADD build-aur /build-aur
ADD build-pkgbuild /build-pkgbuild
