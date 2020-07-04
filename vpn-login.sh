#!/usr/bin/env bash
read -p 'Enter VPN username: ' USER
read -s -p 'Enter VPN password: ' PASSWORD
echo
(echo "$vpnuser"; echo "$vpnpass") |kubectl create secret generic vpn-login --from-literal=USER="$USER" --from-literal=PASSWORD="$PASSWORD"
