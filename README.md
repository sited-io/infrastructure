# peoplesmarkets.com - Infrastructure

## Playbooks

### Service Cluster

#### 1: [Configuring host systems](playbooks/host/)

### 2: Public Gateway (proxy)

```sh
# dev
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml
```

```sh
# prod
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml
```

### 3: Vault

```sh
# dev
ansible-playbook -i inventories/dev/ playbooks/vault/vault.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

```sh
# prod
ansible-playbook -i inventories/prod/ playbooks/vault/vault.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

### 4: Consul

```sh
# dev
ansible-playbook -i inventories/dev/ playbooks/consul/consul.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

```sh
# prod
ansible-playbook -i inventories/prod/ playbooks/consul/consul.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

### 5: Nomad

```sh
# dev
ansible-playbook -i inventories/dev/ playbooks/nomad/nomad.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

```sh
# prod
ansible-playbook -i inventories/prod/ playbooks/nomad/nomad.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

## Monitoring

### 1: Allocation logs

```sh
# dev
ansible-playbook -i inventories/dev/ playbooks/logging/logging.yaml
```

```sh
# prod
ansible-playbook -i inventories/prod/ playbooks/logging/logging.yaml
```

## Databases

### 1: Cockroach

```sh
# dev
ansible-playbook -i inventories/dev/ playbooks/cockroach/cockroach.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

```sh
# prod
ansible-playbook -i inventories/prod/ playbooks/cockroach/cockroach.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/public_gateway.yaml --tags configure
```

## Auth

### 1: Zitadel

```sh
# dev
ansible-playbook -i inventories/dev/ playbooks/zitadel/install.yaml
ansible-playbook -i inventories/dev/ playbooks/public_gateway/auth.yaml
ansible-playbook -i inventories/dev/ playbooks/zitadel/zitadel.yaml
```

```sh
# prod
ansible-playbook -i inventories/prod/ playbooks/zitadel/install.yaml
ansible-playbook -i inventories/prod/ playbooks/public_gateway/auth.yaml
ansible-playbook -i inventories/prod/ playbooks/zitadel/zitadel.yaml
```
