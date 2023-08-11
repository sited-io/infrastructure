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

