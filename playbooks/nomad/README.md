# Playbook - [Nomad](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/nomad/nomad.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/nomad/nomad.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

## Roles

### [1: Install](./install/)

### [2: Configure](./configure/)

### [3: ACL - Access Control Lists](./acl/)

### [4: Vault](./vault/)

### [5: Consul](./consul/)

### [6: TLS - Transport Layer Security](./tls/)
