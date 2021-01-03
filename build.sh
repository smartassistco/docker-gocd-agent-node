#!/bin/bash

GOCD_AGENT_VERSION=20.10.0
NODE_VERSION=15

echo "Creating temp directory"

mkdir -p tmp

echo "Downloading source files"

wget -q -O tmp/node.dockerfile "https://github.com/nodejs/docker-node/raw/master/$NODE_VERSION/alpine3.12/Dockerfile"

echo "Creating Dockerfile"

# Creating node.dockerfile
{
  echo -e "## DO NOT MODIFY DIRECTLY. GENERATED WITH build.sh ##\\n"

  echo "FROM gocd/gocd-agent-alpine-3.12:v$GOCD_AGENT_VERSION"

  echo -e "\\n# Become root"
  echo -e "USER root\\n"

  echo -e "\\n#\\n# Node\\n#\\n"
  sed "/^FROM.*/d; /^CMD.*/d; /^COPY docker-entrypoint.sh.*/d; /^ENTRYPOINT.*/d; s/[[:space:]]1000/ 1001/g" tmp/node.dockerfile

  echo -e "\\n# Change user back to go"
  echo "USER go"

} >Dockerfile

echo "Dockerfile generated"
