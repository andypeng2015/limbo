#!/bin/sh

set -e

export DOCKER_REPO_URL=$ANTITHESIS_DOCKER_REPO

export IMAGE_NAME=limbo-config

export DOCKER_IMAGE_VERSION=antithesis-latest

export DOCKER_BUILD_ARGS="--build-arg antithesis=true"

export DOCKERFILE=stress/Dockerfile.antithesis-config

export DOCKER_DIR=stress

cat turso.key.json | docker login -u _json_key https://$ANTITHESIS_DOCKER_HOST --password-stdin

${BASH_SOURCE%/*}/publish-docker.sh
