#!/bin/sh

while true; do
	cd /home/ec2-user/vpn/
	openvpn \
		--config "/home/ec2-user/vpn/hugport@fw-inet.algocloud.cz.ovpn" \
		--auth-user-pass "/home/ec2-user/vpn/hugport@fw-inet.algocloud.cz.pass"
done
