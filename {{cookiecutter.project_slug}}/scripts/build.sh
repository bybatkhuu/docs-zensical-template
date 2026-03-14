#!/usr/bin/env bash
set -euo pipefail


## --- Base --- ##
_SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]:-"$0"}")" >/dev/null 2>&1 && pwd -P)"
_PROJECT_DIR="$(cd "${_SCRIPT_DIR}/.." >/dev/null 2>&1 && pwd)"
cd "${_PROJECT_DIR}" || exit 2


if ! command -v zensical >/dev/null 2>&1; then
	echo "[ERROR]: Not found 'zensical' command, please install it first!" >&2
	exit 1
fi
## --- Base --- ##


## --- Variables --- ##
# Flags:
_IS_CLEAN=false
## --- Variables --- ##


## --- Menu arguments --- ##
_usage_help() {
	cat <<EOF
USAGE: ${0} [options]

OPTIONS:
    -c, --enable-clean    Enable clean step. Default: false
    -h, --help            Show this help message.

EXAMPLES:
    ${0} -c
    ${0} --enable-clean
EOF
}

while [ $# -gt 0 ]; do
	case "${1}" in
		-c | --enable-clean)
			_IS_CLEAN=true
			shift;;
		-h | --help)
			_usage_help
			exit 0;;
		*)
			echo "[ERROR]: Failed to parse argument -> ${1}!" >&2
			_usage_help
			exit 1;;
	esac
done
## --- Menu arguments --- ##


## --- Main --- ##
main()
{
	echo "[INFO]: Building documentation pages (HTML) into the 'site' directory..."
	zensical build || exit 2

	if [ "${_IS_CLEAN}" == true ]; then
		if [ ! -f ./scripts/clean.sh ]; then
			echo "[ERROR]: 'clean.sh' script not found!" >&2
			exit 1
		fi

		./scripts/clean.sh || exit 2
	fi
	echo "[OK]: Done."
}

main
## --- Main --- ##
