# Role - Configure host systems

Role to initially configure host systems.

- Update apt packages
- Set hostname
- Use ntp for clock synchronization from [CockroachDB docs](https://www.cockroachlabs.com/docs/stable/deploy-cockroachdb-on-premises#step-1-synchronize-clocks)
- Install and configure UFW firewall and allow internal network

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [private_network_range](#private_network_range)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

None.


## Default Variables

### private_network_range

Ip range that will be allowed by firewall.

#### Default value

```YAML
private_network_range: 10.0.0.0/8
```



## Dependencies

None.

## License

MIT

## Author

Maximilian Temeschinko
