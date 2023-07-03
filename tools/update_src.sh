#!/bin/bash

VERSION=$1

CHECKSUMS=`wget https://github.com/binwiederhier/ntfy/releases/download/v$VERSION/checksums.txt -q -O -`

src() {
    cat << SH > conf/$1.src
SOURCE_URL=https://github.com/binwiederhier/ntfy/releases/download/v${VERSION}/ntfy_${VERSION}_linux_${2}.tar.gz
SOURCE_SUM=`echo "$CHECKSUMS" | grep ${VERSION}_linux_${2}.tar.gz | cut -d " " -f 1`
SOURCE_SUM_PRG=sha256sum
SOURCE_FORMAT=tar.gz
SOURCE_IN_SUBDIR=true
SOURCE_FILENAME=ntfy_${VERSION}_linux_${2}
SH
}

src amd64 amd64
src arm64 arm64
src armhf armv7
