# Playbook - [Nomad](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/nomad/nomad.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/nomad/nomad.yaml
```

## Roles

### [1: Install](./install/)

### [2: Configure](./configure/)

### [3: Consul](./consul/)

### [4: ACL - Access Control Lists](./acl/)

### [5: Vault](./vault/)

### [6: SSL PKI - SSL Public Key Infrastructure](./ssl_pki/)

### [7: SSL PKI - SSL update](./ssl_update/)
