# This file is from the hashicorp tutorial from this page:
#     https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
# This line looks specific to an OS for how to connect to Docker.  I suspect we need TCP instead on Linux.
#   host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial-marco"

  ports {
    internal = 80
    external = 8000
  }
}

