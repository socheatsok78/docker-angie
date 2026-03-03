target "docker-metadata-action" {}
target "github-metadata-action" {}

target "angie-alpine-metadata" {}
target "angie-debian-metadata" {}
target "angie-debian-minimal-metadata" {}
target "angie-minimal-metadata" {}
target "angie-rocky-metadata" {}
target "angie-ubuntu-metadata" {}
target "angie-ubuntu-minimal-metadata" {}

target "angie-alpine" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-alpine-metadata",
  ]
  dockerfile = "templates/alpine/Dockerfile"
}

target "angie-debian" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-debian-metadata",
  ]
  dockerfile = "templates/debian/Dockerfile"
}
target "angie-debian-minimal" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-debian-minimal-metadata",
  ]
  dockerfile = "templates/debian-minimal/Dockerfile"
}

target "angie-minimal" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-minimal-metadata",
  ]
  dockerfile = "templates/minimal/Dockerfile"
}

target "angie-rocky" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-rocky-metadata",
  ]
  dockerfile = "templates/rocky/Dockerfile"
}

target "angie-ubuntu" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-ubuntu-metadata",
  ]
  dockerfile = "templates/ubuntu/Dockerfile"
}

target "angie-ubuntu-minimal" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-ubuntu-minimal-metadata",
  ]
  dockerfile = "templates/ubuntu-minimal/Dockerfile"
}

group "default" {
  targets = [
    "angie-alpine",
    "angie-debian",
    "angie-debian-minimal",
    "angie-minimal",
    // "angie-rocky",
    "angie-ubuntu",
    "angie-ubuntu-minimal",
  ]
}
