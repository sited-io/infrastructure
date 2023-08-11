vault {
  address      = "{{ vault.url }}"
  unwrap_token = false
  renew_token  = true

  token = "{{ vault_token }}"

  ssl {
    enabled = true
    verify  = true
  }
}

template {
  source      = "{{ consul_template.data_dir }}/consul-server.token.tpl"
  destination = "/opt/consul/gossip/consul-server.token"

  left_delimiter  = "[["
  right_delimiter = "]]"

  user  = "consul"
  group = "consul"
  perms = 0440
}

template {
  source      = "{{ consul_template.data_dir }}/gossip.key.tpl"
  destination = "/opt/consul/gossip/gossip.key"

  left_delimiter  = "[["
  right_delimiter = "]]"

  user  = "consul"
  group = "consul"
  perms = 0550

  wait {
    min = "2s"
    max = "10s"
  }

  exec {
    command = ["/opt/consul/gossip/rotate_key.sh"]
  }
}

