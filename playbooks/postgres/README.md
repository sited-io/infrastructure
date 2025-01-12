# Playbook - [Postgres](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/postgres/postgres.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/postgres/postgres.yaml
```

## Roles

### [1: Install](./install/)

### [2: Configure](./configure/)

### [3: Consul](./consul/)

### [4: Credentials](./credentials/)
