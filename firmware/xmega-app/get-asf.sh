#!/bin/bash

set -euo pipefail
script_dir=$(cd "$(dirname "$0")" && pwd)

source_url=http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=EN603562
archive_dir=xdk-asf-3.36.2
target_dir=$HOME/Downloads/Atmel

mkdir -p "$target_dir"
cd "$target_dir"

if [[ ! -f asf.zip ]]; then
	echo "Downloading ASF archive"
	curl -SL "$source_url" -o asf.zip
fi

if [[ ! -d "$archive_dir" ]]; then
	echo "Unpacking ASF archive"
	unzip asf.zip "$archive_dir/*"
fi

echo "Linking ASF directory"
ln -sf "$target_dir/$archive_dir" "$script_dir"/ext/asf 

echo "Done."