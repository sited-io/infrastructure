job "debian-debug" {
  datacenters = ["dc1"]
  type = "service"

  group "debian-debug" {
    count = 1

    network {
      mode = "bridge"
    }

    service {
      connect {
        sidecar_service {
          proxy {
            upstreams {
              destination_name = "cockroach-sql"
              local_bind_port = 5432
            }
          }
        }
      }
    }

    task "debian-debug" {
      driver = "docker"

      config {
        image = "docker.io/debian:stable-slim"
        command = "tail"
        args = [
          "-f",
          "/dev/null"
        ]
      }
    }
  }
}