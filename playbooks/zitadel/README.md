# Playbook - [Zitadel](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/zitadel/install.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/auth.yaml
ansible-playbook -i inventories/dev/ playbooks/zitadel/projects.yaml
ansible-playbook -i inventories/dev/ playbooks/zitadel/branding.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/zitadel/install.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/auth.yaml
ansible-playbook -i inventories/prod/ playbooks/zitadel/projects.yaml
ansible-playbook -i inventories/prod/ playbooks/zitadel/branding.yaml
```

## Roles

### [1: Install](./install/)

### [2: Projects](./projects/)

### [3: Branding](./branding/)
