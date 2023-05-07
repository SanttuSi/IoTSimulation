#!/bin/sh

vagrant destroy -f iotBox
vagrant box remove iotBox
vagrant up iotBox --provision
vagrant vbguest iotBox --status
vagrant package --output ../iot.box
vagrant box add iotBox ../iot.box -f
vagrant destroy -f iotBox
rm -rf .vagrant/
