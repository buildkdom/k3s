#!/bin/bash
sudo cat /var/lib/rancher/k3s/server/node-token
# K10c69665bac615aa19c678c7dec6a30619278ce14ab0d6d46212143c6400a332c1::server:bda0e426882c0cd53fed457dde4bb274

master_ip=$(kubectl get node master -o jsonpath="{.status.addresses[0].address}")
echo $master_ip
