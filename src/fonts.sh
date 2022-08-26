#!/bin/bash

sudo apt install fontconfig

declare -a fonts=( 
    AnonymousPro
    BitstreamVeraSansMono
    CodeNewRoman
    DroidSansMono
    FiraCode
    FiraMono
    Go-Mono
    Hack
    Hasklig
    Hermit
    Iosevka
    JetBrainsMono
    Lekton
    Meslo
    Noto
    Overpass
    ProggyClean
    ProFont
    RobotoMono
    SourceCodePro
    SpaceMono
    Ubuntu
    UbuntuMono
    VictorMono
)

version='latest'
fonts_dir="${HOME}/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

for font in "${fonts[@]}"; do
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/${version}/download/${zip_file}"
    echo "Downloading $download_url"
    wget "$download_url"
    unzip "$zip_file" -d "$fonts_dir"
    rm "$zip_file"
done

find "$fonts_dir" -name '*Windows Compatible*' -delete

fc-cache -fv

