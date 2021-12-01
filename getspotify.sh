#!/bin/bash
if [ $1 == 'rm' ]; then
	rm -rf /usr/bin/spotify /usr/share/spotify /usr/share/doc/spotify-client
fi
VERSION=1.1.72.439.gc253025e
cd /tmp
wget https://repository-origin.spotify.com/pool/non-free/s/spotify-client/spotify-client_${VERSION}_amd64.deb
ar x spotify-client*.deb
tar xf data.tar.gz
cp -r usr/* /usr
patchelf --replace-needed libcurl-gnutls.so.4 libcurl.so.4 /usr/bin/spotify
ln -s /usr/share/spotify/spotify.desktop /usr/share/applications/spotify.desktop
