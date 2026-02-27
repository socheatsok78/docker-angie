#!/usr/bin/env bash

set -e

outdir="library"
supported_variants=(
	"alpine"
	"minimal"
	"debian"
	"rocky"
	"ubuntu"
)

TAGS_FILE="./tags.json"

GITHUB_REPOSITORY_OWNER=${GITHUB_REPOSITORY_OWNER:-"socheatsok78"}
GITHUB_REPOSITORY=${GITHUB_REPOSITORY:-"${GITHUB_REPOSITORY_OWNER}/docker-angie"}

function dockerbakefile() {
	local version="$1"
	echo "variable \"GITHUB_REPOSITORY_OWNER\" {"
	echo "  default = \"${GITHUB_REPOSITORY_OWNER}\""
	echo "}"
	echo ""
	echo "variable \"GITHUB_REPOSITORY\" {"
	echo "  default = \"${GITHUB_REPOSITORY}\""
	echo "}"
	echo ""
	for variant in "${supported_variants[@]}"; do
		echo "target \"angie-${variant}-metadata\" {"
		echo "  args = {"
		echo "    \"ANGIE_VERSION\" = \"${version}\""
		echo "    \"ANGIE_VARIANT\" = \"${variant}\""
		echo "  }"
		echo "  tags = ["
		short_version=$(echo "$version" | cut -d '.' -f 1-2)
		if [[ "${version}" == "$(echo "$tags" | grep "$short_version" | head -n1)" ]]; then
			if [[ "${variant}" == "alpine" ]]; then
				echo "    \"docker.io/\${replace(GITHUB_REPOSITORY, \"docker-\", \"\")}:${short_version}\","
				echo "    \"ghcr.io/\${replace(GITHUB_REPOSITORY, \"docker-\", \"\")}:${short_version}\","
			fi
			echo "    \"docker.io/\${replace(GITHUB_REPOSITORY, \"docker-\", \"\")}:${short_version}${variant:+-$variant}\","
			echo "    \"ghcr.io/\${replace(GITHUB_REPOSITORY, \"docker-\", \"\")}:${short_version}${variant:+-$variant}\","
		fi
		if [[ "${variant}" == "alpine" ]]; then
			echo "    \"docker.io/\${replace(GITHUB_REPOSITORY, \"docker-\", \"\")}:${version}\","
			echo "    \"ghcr.io/\${replace(GITHUB_REPOSITORY, \"docker-\", \"\")}:${version}\","
		fi
		echo "    \"docker.io/\${replace(GITHUB_REPOSITORY, \"docker-\", \"\")}:${version}${variant:+-$variant}\","
		echo "    \"ghcr.io/\${replace(GITHUB_REPOSITORY, \"docker-\", \"\")}:${version}${variant:+-$variant}\""
		echo "  ]"
		echo "}"
		echo ""
	done
}

tags=$(jq -r '. | join("\n")' "$TAGS_FILE")
echo "$tags" | while read -r version; do
	# if [ -d "${outdir}/${version}" ]; then
	#    continue
	# fi
	echo "Rendering \"${outdir}/${version}/docker-bake.hcl\" file..."
	mkdir -p "${outdir}/${version}"
	dockerbakefile "$version" > "${outdir}/${version}/docker-bake.hcl"
done
