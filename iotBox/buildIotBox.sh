# Remove previous build
vagrant destroy -f iotBox
vagrant box remove iotBox
# Provision iotBox
vagrant up iotBox --provision
# Package the provisioned VM
vagrant package --output ../iot.box
# Add box to vagrant
vagrant box add iotBox ../iot.box -f
# Destroy running VM
vagrant destroy -f iotBox
# Remove vagrant cache
rm -rf .vagrant/
