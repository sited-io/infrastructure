# Playbook - [Public Gateway (proxy)](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/public_gateway/public_gateway.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/public_gateway/public_gateway.yaml
```

## Roles

### [1: Prepare](./prepare/)

### [2: Install](./install/)

### [3: Configure](./configure/)

### [4: Auth](./auth/) Requires ZITADEL to be deployed

Developement environment

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/public_gateway/auth.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/public_gateway/auth.yaml
```
