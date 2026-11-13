#!/bin/bash

PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$PROJECT_DIR/apps/clinic_admin" || exit 1

flutter run "$@"
