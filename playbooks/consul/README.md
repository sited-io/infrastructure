# Playbook - [Consul](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/consul/consul.yaml
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/public_gateway/public_gateway.yaml --tags configure
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/consul/consul.yaml
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/public_gateway/public_gateway.yaml --tags configure
```

## Roles

### [1: Install](./install/)

### [2: Configure](./configure/)

### [3: Gossip](./gossip/)

### [4: ACL - Access Control Lists](./acl/)

### [5: DNS - Domain Name System](./dns/)

### [6: TLS - Transport Layer Security](./tls/)
