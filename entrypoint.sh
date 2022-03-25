#!/bin/bash
set -e

# Remove o server.pid pre-existente para o Rails
rm -f /www/devregister/tmp/pids/server.pid

# Executa o CMD do Dockerfile.
exec "$@"