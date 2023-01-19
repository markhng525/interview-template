#!/bin/bash
set -x

isort src
autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place src --ignore-init-module-imports
black src
