#!/usr/bin/env bash

set -e

DIRECTORY=$1

FILES=$(find "$DIRECTORY" -name "*.md")

for f in ${FILES}
do
    # sed -i is different on mac and on linux
    sed "s@../developer-guide/api@https://github.com/zama-ai/concrete-ml-internal/tree/main/docs/developer-guide/api@g" "$f" > tmp.file.md
    mv tmp.file.md "$f"
done
