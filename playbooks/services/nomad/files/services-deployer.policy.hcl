namespace "default" {
  capabilities = ["submit-job","list-jobs","read-job"]

  variables {
    path "nomad/jobs/*" {
      capabilities = ["write", "read", "destroy"]
    }
  }
}
