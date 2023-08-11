agent_prefix "client-*" {
  policy = "write"
}

agent_prefix "server-*" {
  policy = "read"
}

node_prefix "" {
  policy = "write"
}

service_prefix "" {
  policy = "write"
}
