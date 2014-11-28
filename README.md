# docker-puppet

The base image for Docker container [simpledrupalcloud/supervisor](https://registry.hub.docker.com/u/simpledrupalcloud/supervisor/).

## Build the image

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/docker-puppet.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout dev \
      && sudo docker build -t simpledrupalcloud/puppet:dev . \
      && cd -

## License

**MIT**
