# Playbook - [GitHub Actions](.)

```sh
ansible-playbook -i inventories/global/ -e @vaults/global.yaml --vault-password-file=.global_ansible_vault_pass playbooks/github_actions/github_actions.yaml
```

## Roles

### [1: Prepare](./prepare/)
