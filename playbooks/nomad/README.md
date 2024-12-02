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

### [3: ACL - Access Control Lists](./acl/)

### [4: Vault](./vault/)

### [5: Consul](./consul/)

### [6: TLS - Transport Layer Security](./tls/)
