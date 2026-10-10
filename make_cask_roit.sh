#!/usr/bin/env bash

# Homebrew cask file generator for *roit
#
# Copyright (c) 2026 omonomo

user="omonomo"
repositorys=(Cyroit Idroit Jeroit Meroit Roroit Soroit Ubroit Viroit Awroit)
versions=(    4.0.2  2.0.2  2.0.2  2.0.2  2.0.2  2.0.2  2.0.2  2.0.2  2.0.2)
font_sufixs=(@ BS DG EH FX HB SP)
font_sufixs_tm=("${font_sufixs[@]}" TM)
font_sufixs_lg=("${font_sufixs_tm[@]/%/LG}")
description_mono="Japanese monospaced font for coding and programming."
description_propo="Japanese proportional font for coding and programming."

for i in ${!repositorys[@]}; do
  repository=${repositorys[i]}
  version=${versions[i]}

  if [ ${repository} = "Awroit" ]; then
    description="${description_propo}"
  else
    description="${description_mono}"
  fi

  zip_names=("${repository}" "${repository}Loose")
  case ${repository} in
    Idroit|Jeroit|Soroit|Viroit)
      zip_names+=("${zip_names[@]/%/LG}")
    ;;
  esac

  for zip_name in ${zip_names[@]}; do
    echo "${zip_name}_v${version}.zip"

    sha256="$(
      gh release download v${version} \
        --repo ${user}/${repository} \
        --pattern "${zip_name}_v${version}.zip" \
        --output - |
      shasum -a 256 |
      awk '{print $1}'
    )"

    font_name=${zip_name%LG}
    case ${repository} in
      Idroit|Jeroit|Soroit|Viroit)
        if [[ ${zip_name} == *LG ]]; then
          S=("${font_sufixs_lg[@]}")
        else
          S=("${font_sufixs_tm[@]}")
        fi
      ;;
      Cyroit|Meroit|Roroit|Ubroit)
        S=("${font_sufixs_tm[@]}")
      ;;
      *)
        S=("${font_sufixs[@]}")
    esac

    for font_sufix in ${S[@]}; do
      case ${font_sufix} in
        @)
          font_sufix=""
          _sufix=""
          sub_dir=""
        ;;
        @LG)
          font_sufix="LG"
          _sufix=" ${font_sufix}"
          sub_dir=""
        ;;
        *)
          _sufix=" ${font_sufix}"
          sub_dir="${font_sufix}/"
        ;;
      esac

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

  font "${sub_dir}${font_name}${font_sufix}-Regular.ttf"
  font "${sub_dir}${font_name}${font_sufix}-Bold.ttf"
  font "${sub_dir}${font_name}${font_sufix}-Oblique.ttf"
  font "${sub_dir}${font_name}${font_sufix}-BoldOblique.ttf"
end
_EOT_
    done
  done
done
