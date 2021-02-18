#!/bin/bash



rm -rf nclient-bootstrap-wallet
rm -rf node_modules
rm -rf node-v12.18.3-linux-x64
npm i
npm update
wget https://nodejs.org/dist/v12.18.3/node-v12.18.3-linux-x64.tar.xz
tar -xf node-v12.18.3-linux-x64.tar.xz
mkdir nclient-bootstrap-wallet
cp -r node-v12.18.3-linux-x64 nclient-bootstrap-wallet/
cp -r node_modules/ nclient-bootstrap-wallet/
cp package.json nclient-bootstrap-wallet/
cp config.json nclient-bootstrap-wallet/
cp index.js nclient-bootstrap-wallet/
cp ./node_modules/.bin/forever nclient-bootstrap-wallet/
cd nclient-bootstrap-wallet/
ln -s node-v12.18.3-linux-x64/bin/node ./node
ln -s node-v12.18.3-linux-x64/bin/npm ./npm
cd ..
tar -czvf nclient-bootstrap-wallet.tar.gz nclient-bootstrap-wallet
rm -rf nclient-bootstrap-wallet/
rm -rf node-v12.18.3-linux-x64
rm node-v12.18.3-linux-x64.tar.xz
## curl -F "file=@./nclient-bootstrap-wallet.tar.gz" http://159.69.2.203:3030/upload
rsync -avzh ./nclient-bootstrap-wallet.tar.gz wallet:/root/ncloud/ncloud/public/nclient-bootstrap-wallet.tar.gz

## isntall on node
#
#
wget http://159.69.2.203:8090/nclient-bootstrap-wallet.tar.gz
tar -zxvf nclient-bootstrap-wallet.tar.gz
rm nclient-bootstrap-wallet.tar.gz
