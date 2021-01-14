#!/bin/bash

src="${1?}"
dest='./bsp'

if [ -d "${dest}" ]; then
    rm -rf "${dest}"
fi
mkdir -p "${dest}"

tar -x \
    --strip-components=1 \
    -C "${dest}" \
    --exclude "*.gitignore" \
    -f "${src}"
