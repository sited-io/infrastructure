# Playbook - [Vault](.)

Developement environment

```sh
ansible-playbook -i inventories/dev/ -e @vaults/dev.yaml --vault-password-file=.dev_ansible_vault_pass playbooks/vault/vault.yaml
```

Production environment

```sh
ansible-playbook -i inventories/prod/ -e @vaults/prod.yaml --vault-password-file=.prod_ansible_vault_pass playbooks/vault/vault.yaml
```

## Roles

### [1: Prepare](./prepare/)

### [2: Install](./install/)

### [3: Configure](./configure/)

### [4: Configure Admin](./configure_admin/)

## Init and unseal commands

```sh
sudo vault operator init \
  -address https://10.0.0.2:8200 \
  -ca-cert /opt/vault/tls/ca.crt \
  -client-cert /opt/vault/tls/client.crt \
  -client-key /opt/vault/tls/client.key

sudo vault operator unseal \
  -address https://10.0.0.4:8200 \
  -ca-cert /opt/vault/tls/ca.crt \
  -client-cert /opt/vault/tls/client.crt \
  -client-key /opt/vault/tls/client.key
```
