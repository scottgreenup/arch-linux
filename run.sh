#!/usr/bin/env bash

set -euo pipefail

ansible-playbook -i inventory/archlinux.yaml --ask-become-pass playbook.yaml
