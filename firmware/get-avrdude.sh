#!/bin/bash

set -euo pipefail
script_dir=$(cd "$(dirname "$0")" && pwd)

source_url=http://download.savannah.gnu.org/releases/avrdude/avrdude-6.3.tar.gz
archive_name="$(basename "$source_url")"
archive_dir=${archive_name/.tar.gz/}
archive_shasum=0f9f731b6394ca7795b88359689a7fa1fba818c6e1d962513eb28da670e0a196
download_dir=$HOME/Downloads
install_prefix=/opt/"$archive_dir"

ubuntu_deps=(
    build-essential flex bison
    libelf-dev
    libusb-dev
    libftdi-dev
    libftdi1-dev
)

mkdir -p "$download_dir"
cd "$download_dir"

if [[ ! -e "$archive_name" ]]; then
    echo "Downloading AVRDUDE archive"
    curl -SL "$source_url" -o "$archive_name"
fi

echo "Checking archive integrity"
shasum -a 256 -c <<EOF
0f9f731b6394ca7795b88359689a7fa1fba818c6e1d962513eb28da670e0a196  $archive_name
EOF

if [[ ! -d "$archive_dir" ]]; then
    echo "Unpacking AVRDUDE archive"
    tar xf "$archive_name" "$archive_dir"
    
    echo "Patching AVRDUDE directory"
    (cd "$archive_dir" && patch < "$script_dir"/avrdude-flip2-reset.patch)
fi

cd "$archive_dir"

# install dependencies if this is ubuntu
if [[ -f /etc/lsb-release ]]; then
    source /etc/lsb-release
    
    if [[ "$DISTRIB_ID" == "Ubuntu" ]]; then
        echo "Installing build dependencies"
        sudo apt-get install "${ubuntu_deps[@]}"
    fi
fi

./configure --prefix="$install_prefix"
make -j
sudo make install

echo
echo "Done.  Add $install_prefix/bin to your PATH, if it's not already there."
echo