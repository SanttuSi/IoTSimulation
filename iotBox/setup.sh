sudo apt-get update -y
sudo apt upgrade -y
wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.11.6-ea9e62ca.tar.gz
tar xvzf geth-linux-amd64-1.11.6-ea9e62ca.tar.gz 
cd geth-linux-amd64-1.11.6-ea9e62ca/
sudo chmod +x geth
sudo cp geth /usr/local/bin/
