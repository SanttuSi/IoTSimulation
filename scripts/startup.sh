
geth init --datadir node /vagrant/secrets/genesis.json
geth account import --datadir node/ --password /vagrant/secrets/pw.txt /vagrant/secrets/keys/$NAME
ENODE=`cat /vagrant/secrets/bootnodeconf/enodeaddr`
WALLET=`printf "0x%s" "$(cat /vagrant/secrets/addresses/${NAME})"`
echo $WALLET

tmux new-session -d -s my_session 'ENODE=`cat /vagrant/secrets/bootnodeconf/enodeaddr` && WALLET=`printf "0x%s" "$(cat /vagrant/secrets/addresses/$NAME)"`&& sudo geth --datadir node --port 30306 --bootnodes $ENODE --networkid 12345 --authrpc.port 8551 --unlock $WALLET --password /vagrant/secrets/pw.txt'

