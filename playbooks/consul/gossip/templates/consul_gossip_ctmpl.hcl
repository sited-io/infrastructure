vault {
  address      = "https://{{ vault.consul_dns_domain }}:{{ vault.ports.https }}"
  unwrap_token = false
  renew_token  = true
  vault_agent_token_file = "{{ consul_template.token_dir }}/vault/.consul_gossip"

  ssl {
    enabled = true
    verify  = false
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

