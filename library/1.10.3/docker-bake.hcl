variable "GITHUB_REPOSITORY_OWNER" {
  default = "socheatsok78"
}

variable "GITHUB_REPOSITORY" {
  default = "socheatsok78/docker-angie"
}

target "angie-alpine-metadata" {
  args = {
    "ANGIE_VERSION" = "1.10.3"
    "ANGIE_VARIANT" = "alpine"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10-alpine",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10-alpine",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3-alpine",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3-alpine"
  ]
}

target "angie-minimal-metadata" {
  args = {
    "ANGIE_VERSION" = "1.10.3"
    "ANGIE_VARIANT" = "minimal"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10-minimal",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10-minimal",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3-minimal",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3-minimal"
  ]
}

target "angie-debian-metadata" {
  args = {
    "ANGIE_VERSION" = "1.10.3"
    "ANGIE_VARIANT" = "debian"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10-debian",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10-debian",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3-debian",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3-debian"
  ]
}

target "angie-ubuntu-metadata" {
  args = {
    "ANGIE_VERSION" = "1.10.3"
    "ANGIE_VARIANT" = "ubuntu"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10-ubuntu",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10-ubuntu",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3-ubuntu",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.10.3-ubuntu"
  ]
}

