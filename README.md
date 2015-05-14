# docker-puppet

## Build the image

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/docker-puppet.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout dev \
      && sudo docker build -t viljaste/puppet:dev . \
      && cd -

## License

**MIT**
