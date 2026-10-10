#!/usr/bin/env bash

# Homebrew cask file generator for TwemojiTT
#
# Copyright (c) 2026 omonomo

user="omonomo"
repository="TwemojiTT"
version="17.0.3"
font_sufixs=(CBDT   COLR sbix    SVG)
sub_dirs=(   CBDT COLRv0 sbix OT-SVG)
font_variations=(@ TM KC TMKC)
description="Twemoji converted to TrueType with the same width as em size."

zip_name="${repository}"
echo "${zip_name}_v${version}.zip"

  sha256="$(
    gh release download v${version} \
      --repo ${user}/${repository} \
      --pattern "${zip_name}_v${version}.zip" \
      --output - |
    shasum -a 256 |
    awk '{print $1}'
  )"

for i in ${!font_sufixs[@]}; do
  sub_dir="${sub_dirs[i]}/"
  font_sufix=${font_sufixs[i]}

  if [ ${font_sufix} = "@" ]; then
    font_sufix=""
    _sufix=""
  else
    _sufix=" ${font_sufix}"
  fi

  for font_variation in ${font_variations[@]}; do
    if [ ${font_variation} = "@" ]; then
      font_variation=""
    fi
    font_name="${repository}${font_variation}"

    echo "${font_name}${_sufix}"
    lower_font_name=$(printf '%s' "${font_name}" | tr '[:upper:]' '[:lower:]')
    lower_font_sufix=$([ -n "${font_sufix}" ] && printf -- '-%s' "${font_sufix}" | tr '[:upper:]' '[:lower:]')
    cat > ./Casks/font-${lower_font_name}${lower_font_sufix}.rb << _EOT_
cask "font-${lower_font_name}${lower_font_sufix}" do
  version "${version}"
  sha256 "${sha256}"

  url "https://github.com/${user}/${repository}/releases/download/v${version}/${zip_name}_v${version}.zip"
  name "${font_name}${_sufix}"
  desc "${description}"
  homepage "https://github.com/${user}/${repository}"

  font "${sub_dir}${font_name}-${font_sufix}.ttf"
end
_EOT_
  done
done
