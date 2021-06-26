#!/bin/bash
NODE_TOKEN=K10b802a8ef1ec2ff6c571f2adf3ad3dace64184b383135435254171699ad5805e9::server:d48502ab5e235b21381fb10be4f7251e
MASTER_IP=10.0.2.100
curl -sfL https://get.k3s.io | K3S_URL=https://$MASTER_IP:6443 \
K3S_TOKEN=$NODE_TOKEN \
INSTALL_K3S_EXEC="--node-name worker1 --docker" \
INSTALL_K3S_VERSION="v1.20.0-rc4+k3s1" sh -s –
