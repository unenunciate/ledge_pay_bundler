#!/bin/bash -e
cd `cd \`dirname $0\`;pwd`

#need to preprocess first to have the Version.js
yarn preprocess

IMAGE=unenunciate/erc4337bundler

npx webpack

docker build -t $IMAGE .
docker tag $IMAGE $IMAGE:$1
echo "== To publish"
echo "   docker push $IMAGE:latest; docker push $IMAGE:$1"

