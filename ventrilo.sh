#!/bin/sh
# Check if existing config files exist, if so will use it.
  
  if [ -f /config/ventrilo_srv.ini ]; then
    echo "Previous config exists, copying.."  
    cp /config/ventrilo_srv.ini /opt/ventsrv/ventrilo_srv.ini
    cp /config/ventrilo_srv.usr /opt/ventsrv/ventrilo_srv.usr
    cp /config/ventrilo_srv.chn /opt/ventsrv/ventrilo_srv.chn
  fi
exec /opt/ventsrv/ventrilo_srv -f/opt/ventsrv/ventrilo_srv >>/var/log/ventrilo.log 2>&1
