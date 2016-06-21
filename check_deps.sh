#!/bin/bash
exists() {
    command -v "$1" 2>&1 >/dev/null
}
fail() {
    echo "$1" ; exit 1
}

exists hugo || fail "Missing hugo, try: sudo apt install hugo"
exists pygmentize || fail "Missing pygmentize, try: sudo apt install python3-pygments"
