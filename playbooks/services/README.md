# Playbook - [Services](.)

Configure services

```sh
ansible-playbook -i inventories/dev/ playbooks/services/services.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/services/services.yaml
```

## Roles

### [1: Vault](./vault/)

### [2: Nomad](./nomad/)

### [3: Cockroach](./cockroach/)
