path "database/static-creds/zitadel_user" {
  capabilities = ["read"]
}

path "database/static-creds/zitadel_admin" {
  capabilities = ["read"]
}

path "kv2/data/zitadel/*" {
  capabilities = ["read"]
}

