terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}
 
provider "docker" {
  host = "unix:///var/run/docker.sock"
}
 
# Pulls the image
resource "docker_image" "nginx_image" {
  name = "nginx"
}
 
# Create a container
resource "docker_container" "nginx_container" {
  image = docker_image.nginx_image.name
  name  = "nginx"
}
 