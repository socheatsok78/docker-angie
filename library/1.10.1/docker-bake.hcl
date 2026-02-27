variable "GITHUB_REPOSITORY_OWNER" {
  default = "socheatsok78"
}

variable "GITHUB_REPOSITORY" {
  default = "socheatsok78/docker-angie"
}

target "angie-alpine-metadata" {
  args = {
    "ANGIE_VERSION" = "1.10.1"
    "ANGIE_VARIANT" = "alpine"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1-alpine",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1-alpine"
  ]
}

target "angie-debian-metadata" {
  args = {
    "ANGIE_VERSION" = "1.10.1"
    "ANGIE_VARIANT" = "debian"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1-debian",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1-debian"
  ]
}

target "angie-minimal-metadata" {
  args = {
    "ANGIE_VERSION" = "1.10.1"
    "ANGIE_VARIANT" = "minimal"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1-minimal",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1-minimal"
  ]
}

target "angie-ubuntu-metadata" {
  args = {
    "ANGIE_VERSION" = "1.10.1"
    "ANGIE_VARIANT" = "ubuntu"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1-ubuntu",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.1-ubuntu"
  ]
}

