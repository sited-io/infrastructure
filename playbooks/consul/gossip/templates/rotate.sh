#!/usr/bin/env bash

set -eo pipefail

CONSUL_TOKEN_PATH="/opt/consul/gossip/consul-server.token"
NEW_KEY_PATH="/opt/consul/gossip/gossip.key"

export CONSUL_HTTP_ADDR="http://{{ ansible_eth1.ipv4.address }}:{{ consul.ports.http }}"
export CONSUL_HTTP_TOKEN="$(cat $CONSUL_TOKEN_PATH)"

if [[ -z $CONSUL_HTTP_TOKEN ]]; then
  echo "Error: Could not get CONSUL_HTTP_TOKEN from $CONSUL_TOKEN_PATH"
  exit 1
fi

NEW_KEY=$(cat $NEW_KEY_PATH | sed -e '/^$/d')

if [[ -z $NEW_KEY ]]; then
  echo "Error: Could not get NEW_KEY from $NEW_KEY_PATH"
  exit 1
fi

consul keyring -install ${NEW_KEY}

consul keyring -use ${NEW_KEY}

KEYS=$(curl -s -H "x-consul-token: $CONSUL_HTTP_TOKEN" ${CONSUL_HTTP_ADDR}/v1/operator/keyring)

ALL_KEYS=$(echo ${KEYS} | jq -r '.[].Keys| to_entries[].key' | sort | uniq)

for i in $(echo ${ALL_KEYS}); do
  if [ $i != ${NEW_KEY} ]; then
    consul keyring -remove $i
  fi
done
