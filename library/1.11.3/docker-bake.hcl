variable "GITHUB_REPOSITORY_OWNER" {
  default = "socheatsok78"
}

variable "GITHUB_REPOSITORY" {
  default = "socheatsok78/docker-angie"
}

target "angie-alpine-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.3"
    "ANGIE_VARIANT" = "alpine"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11-alpine",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11-alpine",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3-alpine",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3-alpine"
  ]
}

target "angie-debian-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.3"
    "ANGIE_VARIANT" = "debian"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11-debian",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11-debian",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3-debian",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3-debian"
  ]
}

target "angie-minimal-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.3"
    "ANGIE_VARIANT" = "minimal"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11-minimal",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11-minimal",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:minimal",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:minimal",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3-minimal",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3-minimal"
  ]
}

target "angie-ubuntu-metadata" {
  args = {
    "ANGIE_VERSION" = "1.11.3"
    "ANGIE_VARIANT" = "ubuntu"
  }
  tags = [
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11-ubuntu",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11-ubuntu",
    "docker.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3-ubuntu",
    "ghcr.io/${replace(GITHUB_REPOSITORY, "docker-", "")}:1.11.3-ubuntu"
  ]
}

