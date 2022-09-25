#!/bin/bash -e
cd `cd \`dirname $0\`;pwd`

#need to preprocess first to have the Version.js
yarn preprocess

IMAGE=someguy/erc4337bundler

npx webpack

docker build -t $IMAGE .
docker tag $IMAGE $IMAGE:$1
docker push $IMAGE:$1 public.ecr.aws/i0a5o0a6/accountabstractionbundler


