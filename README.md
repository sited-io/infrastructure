# peoplesmarkets.com - Infrastructure

## Development

### Linting & static security analyser

Both the linter and the static security analyser are running on each push on the github actions pipeline.

- As linter [ansible-lint](https://ansible.readthedocs.io/projects/lint/) is used. For installation documentation see [ansible lint installing](https://ansible.readthedocs.io/projects/lint/)

  - Just run `ansible-lint`

- To check if there are any passwords, tokens... hardcoded, [kics](https://kics.io/index.html) is used to ensure a secure IaC repository.
  - Run it locally `docker run -t -v $PWD:/path checkmarx/kics:latest scan -p /path -o "/path/"`

### Documentation

Requires `ansible-doctor`

```sh
ansible-doctor --recursive <playbook_path>
```

Generate docs for all playbooks:

```sh
ls -d playbooks/* | xargs -I {} bash -c "ansible-doctor --recursive -f {}"
```

## [Provisioning](./provisioning/)

## Playbooks

### Service Cluster

#### [1: Configuring host systems](./playbooks/host/)

#### [2: Public Gateway (proxy)](./playbooks/public_gateway/)

#### [3: Vault](./playbooks/vault/)

#### [4: Consul](./playbooks/consul/)

#### [5: Nomad](./playbooks/nomad/)

### Monitoring

#### [1: Allocation logs](./playbooks/logging/)

### Databases

#### [1: Cockroach](./playbooks/cockroach/)

### Auth

#### [1: Zitadel](./playbooks/zitadel/)

## Secrets

Initial secrects required for deploying vault cluster and public gateway are stored in ansible-vault encrypted yaml files.

Developement environment

```sh
EDITOR='code --wait' ansible-vault edit --vault-password-file=.dev_ansible_vault_pass vaults/dev.yaml
```

Production environment

```sh
EDITOR='code --wait' ansible-vault edit --vault-password-file=.prod_ansible_vault_pass vaults/prod.yaml
```

## Host systems

### cloud-init script

```sh
echo 'admin ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
```
