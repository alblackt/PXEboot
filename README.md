# PXEboot
PXE boot learn project

FreeBSD as sever for diskless boot 
(*NIX OS only, for Windows you will need to install another TFTP server)


How to use: 
0. Read about PXE boot stages 
1. Inatall clean FreeBSD
2. Update. Install atftp, isc-dhcpd, nfs:
- you can use /bsd_scripts/1_update_install.sh and config files from /config_root.
- In rc.conf and dhcpd.conf you might need to redefine IP, interfaces, MAC addresses of diskless PC, fstab, etc. 


/diskless_srv_bsd:
|
|-bsd_scripts - usefull scripts
|-config_root - config files from root directory
|-urls - usefull links 


