# docker-puppet-debian-wheezy

An intermediate base Docker image for [dockerizedrupal/supervisor-debian-wheezy](https://github.com/dockerizedrupal/docker-supervisor-debian-wheezy).

This project is part of the [Dockerized Drupal](https://dockerizedrupal.com/) initiative.

## Run the container

    CONTAINER="puppet" && sudo docker run \
      --name "${CONTAINER}" \
      -h "${CONTAINER}" \
      dockerizedrupal/puppet-debian-wheezy:1.1.0

## Build the image

    TMP="$(mktemp -d)" \
      && git clone https://github.com/dockerizedrupal/docker-puppet-debian-wheezy.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout 1.1.0 \
      && sudo docker build -t dockerizedrupal/puppet-debian-wheezy:1.1.0 . \
      && cd -

## License

**MIT**
