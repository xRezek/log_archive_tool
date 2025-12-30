#!/usr/bin/env bash

path=${1}
date=$(date +%Y%m%d_%H%M%S)
name="logs_archive_"
path_to_store_archives="./archives/"

if [[ -z "$path" ]]; then
  echo "error: Please add valid path to your data as a first argument" >&2; exit 1
fi


if ! [[ -d $path_to_store_archives ]]; then 
  mkdir $path_to_store_archives
fi




tar -czf "$path_to_store_archives$name$date.tar.gz" "$path"
