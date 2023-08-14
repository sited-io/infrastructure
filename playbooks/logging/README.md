# Playbook - [Logging](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/logging/logging.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/logging/logging.yaml
```

## Roles

### [1: Install](./install/)
