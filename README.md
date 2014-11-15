# docker-puppet

The base image for Docker container [simpledrupalcloud/supervisor](https://registry.hub.docker.com/u/simpledrupalcloud/supervisor/).

## Build the image

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/docker-puppet.git "${TMP}" \
      && cd "${TMP}" \
      && sudo docker build -t simpledrupalcloud/puppet:latest . \
      && cd -

## License

**MIT**
