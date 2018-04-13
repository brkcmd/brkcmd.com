#!/usr/bin/env bash

set -euo pipefail

CONTENT_DIR="$(pwd)/content"
THUMB_DIR="$(pwd)/static/thumbs"
PREFERENCES="maxresdefault sddefault hqdefault"

get_youtube_ids () {
    rgrep -oh '{{<[[:space:]]\+youtube[[:space:]]\+\(.*\)[[:space:]]\+>}}' $CONTENT_DIR | cut -d' ' -f3 | sort | uniq
}

download_youtube_thumb () {
    retval=1
    for preference in $PREFERENCES; do
        echo -n " $preference ..."
        curl -sLf -o "$2" "https://i.ytimg.com/vi/$1/$preference.jpg" || continue
        retval=0
        break
    done
    if [ $retval == 1 ]; then
        echo " failed."
        echo "Failed to download any image for $1 -- is it a valid ID?"
    else
        echo " success."
    fi
    return $retval
}

for id in $(get_youtube_ids) ; do 
    echo -n "Checking ID $id ... "
    if [ -f "${THUMB_DIR}/$id.jpg" ] ; then 
        echo "done."
        continue
    fi
    echo -n "downloading"
    download_youtube_thumb $id "${THUMB_DIR}/$id.jpg"
done
