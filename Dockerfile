FROM base/devel:latest

RUN pacman -Sy --noconfirm git

VOLUME /pkg

RUN mkdir /build
WORKDIR /build
RUN useradd -d /build makepkg
COPY sudoers /etc/sudoers
RUN chown -R makepkg:users /build

ADD build.sh /build.sh
