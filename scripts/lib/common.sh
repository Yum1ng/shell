#!/usr/bin/env bash

common_setup() {
    export MY_ROOT="$(unset CDPATH; cd "$(dirname "${BASH_SOURCE[0]}")"/../.. && pwd)"
    export MY_BUILD="$MY_ROOT/_build"
    export PYTHONPATH="$MY_ROOT/"
#    if [[ -d "$MY_BUILD/pyvenv/bin" ]]; then
#        export PATH="$MY_BUILD/pyvenv/bin${PATH:+:$PATH}"
#    fi
}

common_setup