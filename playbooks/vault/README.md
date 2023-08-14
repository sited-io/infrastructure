# Playbook - [Vault](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/vault/vault.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/vault/vault.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

## Roles

### [1: Prepare](./prepare/)

### [2: Install](./install/)

### [3: Configure](./configure/)

### [4: Configure Admin](./configure_admin/)
