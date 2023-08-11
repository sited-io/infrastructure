# peoplesmarkets.com - Infrastructure

## Dev

### Service Cluster

#### 1: Host

ansible-playbook -i inventories/dev/ playbooks/host/host.yaml

#### 2: Public Gateway (proxy)

ansible-playbook -i inventories/dev/ playbooks/public_gateway/public_gateway.yaml

#### 3: Vault

ansible-playbook -i inventories/dev/ playbooks/vault/vault.yaml

##### 3.1: Configure admin locally

ansible-playbook -i inventories/dev/ playbooks/vault/configure_admin.yaml

#### 4: Consul

ansible-playbook -i inventories/dev/ playbooks/consul/consul.yaml

#### 5: Nomad

ansible-playbook -i inventories/dev/ playbooks/nomad/nomad.yaml

### Monitoring

#### 1: Allocation logs

ansible-playbook -i inventories/dev/ playbooks/logging/logging.yaml

### Databases

#### 1: Cockroach

ansible-playbook -i inventories/dev/ playbooks/cockroach/cockroach.yaml

### Auth

#### 1: Zitadel

ansible-playbook -i inventories/dev/ playbooks/zitadel/zitadel.yaml
