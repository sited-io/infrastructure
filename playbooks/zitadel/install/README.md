# Role - install

Requires [Vault](../../vault/) to be run

Requires [Nomad](../../nomad/) to be run

Requires [Cockroach](../../cockroach) to be run and zitadel users to be configured in Vault

Requires SMTP credentials and 32 bit master_key to be saved to Vault

- Deploy init job to nomad
- Deploy setup job to nomad
- Deploy start job to nomad

## Table of content

- [Requirements](#requirements)
- [Discovered Tags](#discovered-tags)
- [Open Tasks](#open-tasks)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

None.


## Discovered Tags

**_always_**

**_init_**

**_setup_**

**_start_**

## Open Tasks

- (automation): Create consul intention for zitadel-init -> cockroach-sql zitadel-setup -> cockroach-sql, zitadel-gateway -> zitadel and zitadel -> cockroach-sql

## Dependencies

None.
