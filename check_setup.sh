#!/usr/bin/env bash
# Run this once to confirm your lab environment is ready.
echo "Checking your lab environment..."
ok=1
python --version || ok=0
git --version || ok=0
if docker run --rm hello-world >/dev/null 2>&1; then
  echo "Docker: working"
else
  echo "Docker: NOT working"; ok=0
fi
if [ "$ok" -eq 1 ]; then
  echo "All good. You are ready for the session."
else
  echo "Something failed. Tell the trainer before the session."
fi
