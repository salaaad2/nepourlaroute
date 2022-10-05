#!/bin/bash
#for i in {182..2000}; do
#	VBoxManage modifyvm "beroot" --natpf1 "tcp-port$i,tcp,,$i,,$i"
#	VBoxManage modifyvm "beroot" --natpf1 "udp-port$i,udp,,$i,,$i"
#done

for i in {1..600}; do
	VBoxManage modifyvm "beroot" --natpf1 delete "tcp-port$i"
	VBoxManage modifyvm "beroot" --natpf1 delete "udp-port$i"
done
