target "docker-metadata-action" {}

target "github-metadata-action" {}

target "angie-default-metadata" {}

target "angie-minimal-metadata" {}

target "angie-default" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-default-metadata",
  ]
  dockerfile = "templates/default/Dockerfile"
}

target "angie-minimal" {
  inherits = [
    "docker-metadata-action",
    "github-metadata-action",
    "angie-minimal-metadata",
  ]
  dockerfile = "templates/minimal/Dockerfile"
}

group "default" {
  targets = [
    "angie-default",
    "angie-minimal",
  ]
}
