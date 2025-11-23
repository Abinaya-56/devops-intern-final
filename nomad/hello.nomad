job "hello" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    network {
      port "http" {
        static = 8090
      }
    }

    task "hello-task" {
      driver = "docker"

      config {
        image = "abinaya216/hello-devops:latest"
        ports = ["http"]
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}

