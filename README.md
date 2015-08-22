# docker-puppet

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/docker-puppet.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker build -t dockerizedrupal/puppet:debian-jessie . \
      && cd -

## License

**MIT**
