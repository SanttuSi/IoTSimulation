#!/usr/bin/env python3
import sys
# Number of iot devices
deviceAmount = int(sys.argv[1]) 
# Get device template string
deviceTemplateFile = open('templates/device.template', 'r')
lines = deviceTemplateFile.readlines()
deviceTemplateFile.close()
deviceTemplate = ''.join(lines)
# Get vagrantfile template
vagrantfileTemplateFile = open('templates/Vagrantfile.template', 'r')
lines = vagrantfileTemplateFile.readlines()
vagrantfileTemplateFile.close()
vagrantfileTemplate = ''.join(lines)
# Generate vagrantfile
vagrantfile = vagrantfileTemplate
i = vagrantfile.find("#Start") + 7
for deviceNum in range(1, deviceAmount + 1):
    addedDevice = deviceTemplate.replace("deviceX", "device" + str(deviceNum)).replace("SUBADDR", str(deviceNum))
    vagrantfile =  vagrantfile[:i] + addedDevice+ vagrantfile[i:]
    i+= len(addedDevice) 
# Write to file
vagrantfileTemplateFile = open('Vagrantfile', 'w')
vagrantfileTemplateFile.write(vagrantfile)
vagrantfileTemplateFile.close()
