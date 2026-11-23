#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."
export CLIPPYME_BIND=0.0.0.0
export TRANSCRIPTION_PROVIDER=whisper
docker compose up -d backend
