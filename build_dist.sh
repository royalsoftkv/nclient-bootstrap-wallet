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
cd ..
tar -czvf nclient-bootstrap-wallet.tar.gz nclient-bootstrap-wallet
rm -rf nclient-bootstrap-wallet/
rm -rf node-v12.18.3-linux-x64
rm node-v12.18.3-linux-x64.tar.xz

