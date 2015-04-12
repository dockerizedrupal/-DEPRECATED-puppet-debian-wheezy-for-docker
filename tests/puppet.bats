#!/usr/bin/env bats

FIG_FILE="${BATS_TEST_DIRNAME}/puppet.yml"

container() {
  echo "$(fig -f ${FIG_FILE} ps puppet | grep puppet | awk '{ print $1 }')"
}

setup() {
  fig -f "${FIG_FILE}" up -d --allow-insecure-ssl

  sleep 10
}

teardown() {
  fig -f "${FIG_FILE}" kill
  fig -f "${FIG_FILE}" rm --force
}

@test "puppet" {
  run docker exec "$(container)" /bin/su - root -mc "puppet --version"

  [ "${status}" -eq 0 ]
  [[ "${output}" == *"3.7.4"* ]]
}
