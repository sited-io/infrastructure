path "auth/token/renew-self" {
  capabilities = ["create", "read", "update"]
}

path "kv2/data/cockroach/clients/global_management" {
  capabilities = ["read"]
}

path "database/config/cockroach" {
  capabilities = ["create", "read", "update"]
}
