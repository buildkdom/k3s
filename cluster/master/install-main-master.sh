#!/bin/bash
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="\
   --disable traefik \
   --disable metrics-server \
   --node-name master --docker" \
   INSTALL_K3S_VERSION="v1.20.0-rc4+k3s1" sh -s –
