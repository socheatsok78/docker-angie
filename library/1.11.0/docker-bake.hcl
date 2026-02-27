variable "GITHUB_REPOSITORY_OWNER" {
  default = "socheatsok78"
}

variable "GITHUB_REPOSITORY" {
  default = "socheatsok78/docker-angie"
}

target "angie-alpine-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.0"
    "ANGIE_VARIANT" = "alpine"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-alpine",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-alpine"
  ]
}

target "angie-minimal-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.0"
    "ANGIE_VARIANT" = "minimal"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-minimal",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-minimal"
  ]
}

target "angie-debian-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.0"
    "ANGIE_VARIANT" = "debian"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-debian",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-debian"
  ]
}

target "angie-rocky-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.0"
    "ANGIE_VARIANT" = "rocky"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-rocky",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-rocky"
  ]
}

target "angie-ubuntu-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.0"
    "ANGIE_VARIANT" = "ubuntu"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-ubuntu",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.0-ubuntu"
  ]
}

