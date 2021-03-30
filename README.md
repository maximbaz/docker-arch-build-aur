[![CI](https://github.com/maximbaz/docker-arch-build-aur/actions/workflows/ci.yml/badge.svg)](https://github.com/maximbaz/docker-arch-build-aur/actions/workflows/ci.yml)

### Build AUR packages

The following command will download AUR package and build it:

```
$ docker pull maximbaz/arch-build-aur
$ docker run --rm -v $(pwd):/pkg maximbaz/arch-build-aur /bin/bash -c '/build-aur <package>'
```

### Build repo packages

The following command will download repo package and build it:

```
$ docker pull maximbaz/arch-build-aur
$ docker run --rm -v $(pwd):/pkg maximbaz/arch-build-aur /bin/bash -c '/build-repo <package>'
```

### Build PKGBUILD

The following command will build local PKGBUILD file (must reside in a folder mounted to /build):

```
$ docker pull maximbaz/arch-build-aur
$ docker run --rm -v $(pwd):/pkg -v $(pwd):/build maximbaz/arch-build-aur /bin/bash -c '/build-pkgbuild'
```

`.SRCINFO` file will be updated/created in /build directory.

### Compiled package location

The binary will be placed in the /pkg folder, which in the example above is mounted to the current directory on the host.

---

- Based on [archlinux/base](https://hub.docker.com/r/archlinux/base) image.
- Updated daily with [GitHub actions](https://github.com/maximbaz/docker-arch-build-aur/actions).
- Sources are on [Github](https://github.com/maximbaz/docker-arch-build-aur).
