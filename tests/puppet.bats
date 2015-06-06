#!/usr/bin/env bats

docker-compose_FILE="${BATS_TEST_DIRNAME}/puppet.yml"

container() {
  echo "$(docker-compose -f ${docker-compose_FILE} ps puppet | grep puppet | awk '{ print $1 }')"
}

setup() {
  docker-compose -f "${docker-compose_FILE}" up -d --allow-insecure-ssl

  sleep 10
}

teardown() {
  docker-compose -f "${docker-compose_FILE}" kill
  docker-compose -f "${docker-compose_FILE}" rm --force
}

@test "puppet" {
  run docker exec "$(container)" /bin/su - root -mc "puppet --version"

  [ "${status}" -eq 0 ]
  [[ "${output}" == *"3.7.4"* ]]
}
