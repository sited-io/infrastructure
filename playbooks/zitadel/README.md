# Playbook - [Zitadel](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/zitadel/install.yaml
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/public_gateway/auth.yaml
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/zitadel/projects.yaml
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/zitadel/branding.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/zitadel/install.yaml
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/public_gateway/auth.yaml
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/zitadel/projects.yaml
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/zitadel/branding.yaml
```

## Roles

### [1: Install](./install/)

### [2: Projects](./projects/)

### [3: Branding](./branding/)
