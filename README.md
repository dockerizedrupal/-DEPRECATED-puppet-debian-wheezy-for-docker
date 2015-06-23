# docker-puppet

## Build the image

    TMP="$(mktemp -d)" \
      && GIT_SSL_NO_VERIFY=true git clone https://git.beyondcloud.io/viljaste/docker-puppet.git "${TMP}" \
      && cd "${TMP}" \
      && git checkout debian-wheezy \
      && sudo docker build -t viljaste/puppet:debian-wheezy . \
      && cd -

## License

**MIT**
