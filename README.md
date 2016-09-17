# WARNING

> **Notice:** *This project is deprecated. Read more about the reason why [here](https://github.com/dockerizedrupal/base-debian-wheezy-for-docker/issues/3).*

# -DEPRECATED-puppet-debian-wheezy-for-docker

A base Docker image for [dockerizedrupal/supervisor-debian-wheezy](https://github.com/dockerizedrupal/-DEPRECATED-supervisor-debian-wheezy-for-docker).

## Run the container

    CONTAINER="puppet" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      dockerizedrupal/puppet-debian-wheezy:1.1.3

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/-DEPRECATED-puppet-debian-wheezy-for-docker.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 1.1.3 \
      && sudo docker build -t dockerizedrupal/puppet-debian-wheezy:1.1.3 . \
      && cd -

## License

**MIT**
