FROM archlinux/base:latest

RUN pacman -Sy --noconfirm base-devel git

VOLUME /pkg /build

RUN useradd -d /home/makepkg makepkg
COPY sudoers /etc/sudoers

RUN mkdir -p /home/makepkg/.gnupg
RUN echo 'keyserver-options auto-key-retrieve' > /home/makepkg/.gnupg/gpg.conf
RUN chown -R makepkg:users /home/makepkg

ADD build-aur /build-aur
ADD build-pkgbuild /build-pkgbuild
