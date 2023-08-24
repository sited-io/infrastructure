vault {
  address      = "https://{{ vault.consul_dns_domain }}:{{ vault.ports.https }}"
  unwrap_token = false
  renew_token  = true
  vault_agent_token_file = "{{ consul_template.token_dir }}/vault/.nomad_consul_creds"

  ssl {
    enabled = true
    verify  = false
  }
}

template {
  source          = "{{ consul_template.data_dir }}/nomad_consul_creds.hcl.tpl"
  destination     = "{{ nomad.config_dir }}/consul.hcl"
  left_delimiter  = "[["
  right_delimiter = "]]"
  user            = "nomad"
  group           = "nomad"
  perms           = 0440

  exec {
    command = ["systemctl", "reload", "nomad"]
  }
}

