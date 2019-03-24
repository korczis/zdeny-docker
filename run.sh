#!/bin/bash

echo "GIT_REPO = ${GIT_REPO}"
echo "GIT_REF = ${GIT_REF}"
echo "SRC_DIR = ${SRC_DIR}"
echo "SSH_KEY_PUB = ${SSH_KEY_PUB}"
echo "SSH_KEY_PRIV = ${SSH_KEY_PRIV}"

echo "${SSH_KEY_PRIV} > ~/.ssh/id_rsa"
echo "${SSH_KEY_PUB} > ~/.ssh/id_rsa.pub"

cat ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub

git clone ${GIT_REPO} ${SRC_DIR}

cd ${SRC_DIR}

git checkout ${GIT_REF}

tree .

## Run my stuff here

# pip install
# python

