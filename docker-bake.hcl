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
}

target "angie-debian" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-debian-metadata",
  ]
}

target "angie-debian-minimal" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-debian-minimal-metadata",
  ]
}

target "angie-minimal" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-minimal-metadata",
  ]
}

target "angie-rocky" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-rocky-metadata",
  ]
}

target "angie-ubuntu" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-ubuntu-metadata",
  ]
}

target "angie-ubuntu-minimal" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-ubuntu-minimal-metadata",
  ]
}

group "default" {
  targets = [
    "angie-alpine",
    "angie-debian",
    // "angie-debian-minimal",
    "angie-minimal",
    // "angie-rocky",
    "angie-ubuntu",
    // "angie-ubuntu-minimal",
  ]
}
