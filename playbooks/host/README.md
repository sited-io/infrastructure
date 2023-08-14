# Playbook - [Configuring host systems](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/host/host.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/host/host.yaml
```

## Roles

### [1: Configure](configure)
