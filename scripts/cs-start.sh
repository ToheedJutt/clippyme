#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."
for i in $(seq 1 30); do docker info >/dev/null 2>&1 && break; sleep 2; done
export CLIPPYME_BIND=0.0.0.0
export TRANSCRIPTION_PROVIDER=whisper
docker compose up -d backend
