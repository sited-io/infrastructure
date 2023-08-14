# Role - tls

Requires [Vault](../../vault/) to be run in order to use PKI
- Enable and configure [PKI](https://developer.hashicorp.com/vault/docs/secrets/pki) on Vault for Nomad agent certificates
- Install and configure [consul-template](https://github.com/hashicorp/consul-template) in order to update nomad agent configuration when certificates get refreshed

## Table of content

- [Requirements](#requirements)
- [Open Tasks](#open-tasks)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

None.



## Open Tasks

- (monitoring): Monitor certificate expiry and alert if certificates did not get refreshed within threshold

## Dependencies

None.
