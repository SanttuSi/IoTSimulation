wget https://gethstore.blob.core.windows.net/builds/geth-alltools-linux-amd64-1.11.6-ea9e62ca.tar.gz
tar xvzf geth-alltools-linux-amd64-1.11.6-ea9e62ca.tar.gz
cd geth-alltools-linux-amd64-1.11.6-ea9e62ca/
sudo chmod +x bootnode
sudo cp bootnode /usr/local/bin/
tmux new-session -d -s my_session 'bootnode -nodekey /vagrant/secrets/bootnodeconf/boot.key -addr "10.1.0.2:30305"'
