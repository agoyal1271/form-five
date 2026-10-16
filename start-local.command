#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PORT=4173

echo "Starting Form Five at http://localhost:${PORT}"
echo "Press Ctrl+C to stop."
(sleep 1; open "http://localhost:${PORT}") &
exec python3 -m http.server "$PORT" --directory "$SCRIPT_DIR/dist"

