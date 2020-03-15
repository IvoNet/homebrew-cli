#!/usr/bin/env bash
wifi=$(networksetup -listallhardwareports | grep -A 1 Wi-Fi | tail -n 1 | cut -b 9-12)
networksetup -setairportpower ${wifi} off
networksetup -setairportpower ${wifi} on
echo "Current IP: $(curl -m 15 -s https://ipecho.net/plain)"
