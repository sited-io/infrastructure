# Playbook - [Vault](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/vault/vault.yaml
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/public_gateway/public_gateway.yaml --tags configure
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/vault/vault.yaml
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/public_gateway/public_gateway.yaml --tags configure
```

## Roles

### [1: Prepare](./prepare/)

### [2: Install](./install/)

### [3: Configure](./configure/)

### [4: Configure Admin](./configure_admin/)
