#!/usr/bin/env bash
#
# This script ensures that the bare minimum has been set up to allow our
# ansible playbooks to be executed.

set -euo pipefail

function _pacman_is_installed() {
	_package="${1}"

	if [[ ${#} -ne 1 ]]; then
		echo "USAGE: _pacman_is_installed PACKAGE_NAME"
		return 1
	fi

	if [[ -z "${_package-}" ]]; then
		echo "PACKAGE_NAME '${_package}' is not valid"
		return 1
	fi

	# If we can query our local database, it is installed.
	if pacman --query --info ${_package} 2>/dev/null 1>/dev/null; then
		return 0
	fi

	return 1
}

function _ensure_installed() {
	_package="${1}"

	if [[ ${#} -ne 1 ]]; then
		echo "USAGE: _ensure_installed PACKAGE_NAME"
		return 1
	fi

	if [[ -z "${_package-}" ]]; then
		echo "PACKAGE_NAME '${_package}' is not valid"
		return 1
	fi

	if ! _pacman_is_installed "${_package}"; then
		if sudo pacman --sync --noconfirm "${_package}"; then
			return 0
		fi
		return 1
	fi

	if ! pacman --query --check --check "${_package}" 1>/dev/null; then
		echo "Package '${_package}' failed installation check, run 'pacman -Q --check --check' for more information"
		return 1
	fi

	return 0
}


_ensure_installed "ansible"

cat<<HEREDOC

Complete!

HEREDOC


