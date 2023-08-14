# Playbook - [Configuring host systems](playbooks/host/)

```sh
# dev
ansible-playbook -i inventories/dev/ playbooks/host/host.yaml
```

```sh
# prod
ansible-playbook -i inventories/prod/ playbooks/host/host.yaml
```

## Roles

### 1: [Configure](configure)
