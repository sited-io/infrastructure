# Playbook - [Cockroach](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/cockroach/cockroach.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/cockroach/cockroach.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

## Roles

### [1: TLS - Transport Layer Security](./tls/)

### [2: Install](./install/)

### [3: Init](./init/)

### [4: Consul](./consul/)

### [5: Credentials](./credentials/)
