path "database/static-creds/zitadel_admin" {
  capabilities = ["read"]
}

path "database/static-creds/zitadel_user" {
  capabilities = ["read"]
}

path "kv/zitadel/*" {
  capabilities = ["read"]
}

