#!/bin/bash

set -euo pipefail
script_dir=$(cd "$(dirname "$0")" && pwd)

proto_dir=$script_dir/../../../protocol
prefix=Proto

pushd "$proto_dir"
protos=(
    *.proto
)
popd

for proto in "${protos[@]}"; do
    hprotoc -I "$proto_dir" -d "$script_dir"/src -p "$prefix" "$proto"
done
