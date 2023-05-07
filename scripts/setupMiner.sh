
geth init --datadir node /vagrant/secrets/genesis.json
geth account import --datadir node/ --password /vagrant/secrets/pw.txt /vagrant/secrets/minerkey

ENODE=`cat /vagrant/secrets/bootnodeconf/enodeaddr`
tmux new-session -d -s my_session 'ENODE=`cat /vagrant/secrets/bootnodeconf/enodeaddr`;sudo geth --datadir node --port 30306 --bootnodes $ENODE --networkid 12345 --authrpc.port 8551'

sleep 5

geth attach --exec 'loadScript("/vagrant/scripts/setupMiner.js")' node/geth.ipc
