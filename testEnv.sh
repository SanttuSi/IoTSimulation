cp -R IoTSimulation/ tempFolder/
cd tempFolder/secrets/
time ./genSecrets.sh -n 5 > ../../genTime
cd ..
time ./startup.sh -n 5 > ../setupTime 
vagrant ssh device1 -c "sudo geth attach  --exec admin.peers node/geth.ipc"
vagrant ssh device1 -c "sudo geth attach --exec \"eth.sendTransaction({to: '0x6c4fe784Cb79502C784521020CD283Cc86E43D42', from: eth.accounts[0], value: 25000})\" node/geth.ipc"
vagrant destroy -f
cd ..
rm -rf tempFolder/


