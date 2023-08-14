# Playbook - [Consul](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ playbooks/consul/consul.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

Production environment

```sh
ansible-playbook -i inventories/prod/ playbooks/consul/consul.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

## Roles

### [1: Install](./install/)

### [2: Configure](./configure/)

### [3: ACL - Access Control Lists](./acl/)

### [4: Gossip](./gossip/)

### [5: TLS - Transport Layer Security](./tls/)

### [6: DNS - Domain Name System](./dns/)
