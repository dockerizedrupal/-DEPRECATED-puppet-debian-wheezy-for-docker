# docker-puppet

## Build the image

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/docker-puppet.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker build -t simpledrupalcloud/puppet:latest . \
      && cd -

## License

**MIT**
