variable "GITHUB_REPOSITORY_OWNER" {
  default = "socheatsok78"
}

variable "GITHUB_REPOSITORY" {
  default = "socheatsok78/docker-angie"
}

target "angie-alpine-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.2"
    "ANGIE_VARIANT" = "alpine"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-alpine",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-alpine"
  ]
}

target "angie-minimal-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.2"
    "ANGIE_VARIANT" = "minimal"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-minimal",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-minimal"
  ]
}

target "angie-debian-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.2"
    "ANGIE_VARIANT" = "debian"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-debian",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-debian"
  ]
}

target "angie-rocky-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.2"
    "ANGIE_VARIANT" = "rocky"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-rocky",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-rocky"
  ]
}

target "angie-ubuntu-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.2"
    "ANGIE_VARIANT" = "ubuntu"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-ubuntu",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.2-ubuntu"
  ]
}

