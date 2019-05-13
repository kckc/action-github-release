#! /bin/sh

IFS='/' read -ra GITHUB_INFO <<< "$GITHUB_REPOSITORY"

export GITHUB_USER=${GITHUB_INFO[0]}
export GITHUB_REPO=${GITHUB_INFO[1]}

sh -c "github-release $*"