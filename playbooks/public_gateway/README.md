# Playbook - [Public Gateway (proxy)](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml
```

## Roles

### [1: Prepare](./prepare/)

### [2: Install](./install/)

### [3: Configure](./configure/)

### [4: Auth](./auth/)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/public_gateway/auth.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/public_gateway/auth.yaml
```
