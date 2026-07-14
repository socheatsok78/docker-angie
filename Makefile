ANGIE_VERSION := $(shell ls -1 library | sort -V | tail -n 1)
target := default

DOCKER_BAKE_FILES := -f docker-bake.hcl
DOCKER_BAKE_FILES += -f hacks/docker-metadata-action.hcl
DOCKER_BAKE_FILES += -f library/$(ANGIE_VERSION)/docker-bake.hcl

it:
	@test -n "$(ANGIE_VERSION)" || (echo "The ANGIE_VERSION variable is required" && exit 1)
	docker buildx bake $(DOCKER_BAKE_FILES) $(target) --print
build:
	docker buildx bake $(DOCKER_BAKE_FILES) $(target) --set="*.platform="
.PHONY: tags.json
tags.json:
	gh api repos/webserver-llc/angie/releases --jq '.[].tag_name' \
		| cut -d- -f2 \
		| jq -R '[.]' | jq -sr 'add' \
		| tee tags.json
