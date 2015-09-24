# docker-puppet-debian-wheezy

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/docker-puppet-debian-wheezy.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 1.0.5 \
      && sudo docker build -t dockerizedrupal/puppet-debian-wheezy:1.0.5 . \
      && cd -

## License

**MIT**
