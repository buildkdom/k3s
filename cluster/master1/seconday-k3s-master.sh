NODE_TOKEN=K10c69665bac615aa19c678c7dec6a30619278ce14ab0d6d46212143c6400a332c1::server:bda0e426882c0cd53fed457dde4bb274
MASTER_IP=10.0.2.100

# curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644 --server https://$MASTER_IP:6443 --token $MASTER_TOKEN

curl -sfL https://get.k3s.io | \
 K3S_TOKEN=$NODE_TOKEN \
 INSTALL_K3S_EXEC=" \
   server --server https://$MASTER_IP:6443 \
   --disable traefik \
   --disable metrics-server \
   --node-name master2 --docker" \
   INSTALL_K3S_VERSION="v1.20.0-rc4+k3s1" sh -s –
