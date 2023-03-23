#!/usr/bin/env bash
#!/usr/bin/env bash

set -eu -o pipefail

if ! command -v revive &> /dev/null ; then
    echo "revive not installed or available in the PATH" >&2
    echo "please check https://github.com/mgechev/revive" >&2
    exit 1
fi

exec revive -config .revive.toml -formatter "stylish" ./...