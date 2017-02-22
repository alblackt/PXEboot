#!/bin/sh
#quick update and first things to-do
freebsd-update fetch
freebsd-update install
pkg update
pkg install mc atftp isc-dhcp43-server
cd /usr/ports/
portsnap fetch
portsnap extract
cd /usr/ports/emulators/open-vm-tools-nox11
make install

