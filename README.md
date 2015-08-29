# docker-puppet-debian-wheezy

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/docker-puppet-debian-wheezy.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker build -t dockerizedrupal/puppet-debian-wheezy:latest . \
      && cd -

## License

**MIT**
