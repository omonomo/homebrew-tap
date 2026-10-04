#!/usr/bin/env bash

# Homebrew cask file generator for JPMonoFonts
#
# Copyright (c) 2026 omonomo

user="omonomo"
repository="JPMonoFonts"
font_names=(Benishijimi Gyaragga Hamachi Kyuri Mogusa Potori Syukuzen Tochinoki Yusei)
font_sufixs=(         @        @     Pop  Maru      @      @        @       Pop Marker)
versions=(        1.0.2    1.0.2   1.0.2 1.0.2  1.0.2  1.0.2    1.0.2     1.0.2  1.0.2)
description="Japanese monospaced font for coding and programming."

for i in ${!font_names[@]}; do
  font_name=${font_names[i]}
  font_sufix=${font_sufixs[i]}
  version=${versions[i]}

  if [ ${font_sufix} = "@" ]; then
    font_sufix=""
    _sufix=""
  else
    _sufix=" ${font_sufix}"
  fi

  zip_name="${font_name}${font_sufix}"
  echo "${zip_name}_v${version}.zip"

  sha256="$(
    gh release download v${version} \
      --repo ${user}/${repository} \
      --pattern "${zip_name}_v${version}.zip" \
      --output - |
    shasum -a 256 |
    awk '{print $1}'
  )"

    cat > ./Casks/font-${font_name}${font_sufix}.rb << _EOT_
cask "font-${font_name}${font_sufix}" do
  version "${version}"
  sha256 "${sha256}"

  url "https://github.com/${user}/${repository}/releases/download/v${version}/${zip_name}_v${version}.zip"
  name "${font_name}${_sufix}"
  desc "${description}"
  homepage "https://github.com/${user}/${repository}"

  font "${font_name}${font_sufix}-Regular.ttf"
end
_EOT_
done
