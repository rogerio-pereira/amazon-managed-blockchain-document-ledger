#!/bin/bash -e


cd "$(dirname ${BASH_SOURCE[0]})/.."


echo "Configuring node version"
. ~/.nvm/nvm.sh
nvm install 16
nvm use 16


echo "Prepping lambda layer"
cp "$HOME/managedblockchain-tls-chain.pem" "lambdas/layer/"
pushd "lambdas/layer/nodejs"
npm install
popd


echo "Lambda configuration completed successfully"
