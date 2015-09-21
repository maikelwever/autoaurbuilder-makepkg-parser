FROM dexec/bash
MAINTAINER Maikel Wever <maikelwever@gmail.com>

VOLUME /build
WORKDIR /build

# Copy over buildscript
ADD parsepkgbuild.sh /opt/parsepkgbuild.sh

# Options: Install dependencies, force package build, clean afterwards
ENTRYPOINT bash /opt/parsepkgbuild.sh
