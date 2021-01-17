[![Build Status](https://travis-ci.org/maximbaz/docker-arch-build-aur.svg?branch=master)](https://travis-ci.org/maximbaz/docker-arch-build-aur)

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

### Compiled package location

The binary will be placed in the /pkg folder, which in the example above is mounted to the current directory on the host.

### Troubleshooting

While running the image you get the following error:

```
chown: cannot read directory '/build': Permission denied
```

try to add the `:z` option to the volume mounts, like: `-v $(pwd):/pkg:z -v $(pwd):/build:z`.

---------

* Based on [archlinux/base](https://hub.docker.com/r/archlinux/base) image.
* Updated daily with [Travis cron job](https://travis-ci.org/maximbaz/docker-arch-build-aur).
* Sources are on [Github](https://github.com/maximbaz/docker-arch-build-aur).
