path "auth/token/renew-self" {
  capabilities = ["create", "read", "update"]
}

path "kv2/data/postgres/config/postgres_password" {
  capabilities = ["read"]
}

path "database/config/postgres" {
  capabilities = ["create", "read", "update"]
}
