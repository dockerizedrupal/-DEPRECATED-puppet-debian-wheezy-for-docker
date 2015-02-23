#!/usr/bin/env bash

case "${1}" in
  build)
    /bin/su - root -mc "apt-get update && /src/puppet/build.sh && /src/puppet/clean.sh"
    ;;
  run)
    /bin/su - root -mc "source /src/puppet/variables.sh && /src/puppet/run.sh"
    ;;
esac
