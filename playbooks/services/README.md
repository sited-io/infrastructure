# Playbook - [Services](.)

Configure services

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/services/services.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/services/services.yaml
```

## Roles

### [1: Vault](./vault/)

### [2: Nomad](./nomad/)

### [3: Cockroach](./cockroach/)
