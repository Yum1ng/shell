#!/usr/bin/env bash
set -euo pipefail
. "$(dirname "${BASH_SOURCE[0]}")/lib/common.sh"

setuup_venv() {
#    if ! [-x "$(command -v python3.6)" ]; then
#        echo "python should be installed first"
#        exit 1
#    fi

    echo "setting up venv"

    venvdir="$MY_BUILD/pyvenv"
    mkdir -p "$venvdir"
    python3 -m venv "$venvdir"
    . "$venvdir/bin/activate"
    python3 -m pip install -r "$MY_ROOT/scripts/lib/requirements.txt" >/dev/null
}

setuup_venv
exec bash --rcfile "$MY_ROOT/scripts/lib/shell.rc"