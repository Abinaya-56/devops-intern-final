job "hello" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "hello-devops:latest"
        # if you pushed to Docker Hub, use e.g. "youruser/hello-devops:latest"
        port_map {
          http = 8080
        }
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}

