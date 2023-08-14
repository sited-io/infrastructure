# peoplesmarkets.com - Infrastructure

## Playbooks

### Service Cluster

#### [1: Configuring host systems](./playbooks/host/)

#### [2: Public Gateway (proxy)](./playbooks/public_gateway/)

#### [3: Vault](./playbooks/vault/)

#### [4: Consul](./playbooks/consul/)

#### [5: Nomad](./playbooks/nomad/)

### Monitoring

#### [1: Allocation logs](./playbooks/logging/)

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
