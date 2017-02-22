#!/bin/sh
# Use to restart NFS server
/etc/rc.d/rpcbind restart
/etc/rc.d/nfsd restart
/etc/rc.d/mountd restart
