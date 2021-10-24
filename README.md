this script can install and uninstall spotify on openSUSE tumbleweed. the current spotify-installer package in packman pulls in an old version which relies on an outdated and insecure library that is not present in tumbleweed, which is why this is necessary. it does not interface with rpm/zypper but it does allow uninstalling.

## usage

you need [patchelf](https://github.com/NixOS/patchelf), binutils, and libcurl.

get:

    git clone https://github.com/chickazee4/spotify-tumbleweed
    chmod +x getspotify.sh

install (run as superuser!!!):
    
    ./getspotify.sh
 
to remove the installed version (also as superuser):
    
    ./getspotify.sh rm
