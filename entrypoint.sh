#!/usr/bin/env bash

#
# Loads settings from the Vault, then loads IB Gateway
#

LOGIN=$(wget -q -O - http://vault.in.okinta.ge:7020/api/kv/ib_paper_login)
if [ -z "$LOGIN" ]; then
    echo "Could not obtain login from Vault" >&2
    exit 1
fi
export LOGIN

PASSWORD=$(wget -q -O - http://vault.in.okinta.ge:7020/api/kv/ib_paper_password)
if [ -z "$PASSWORD" ]; then
    echo "Could not obtain password from Vault" >&2
    exit 1
fi
export PASSWORD

export MODE=paper

# Now run IB Gateway
exec /entrypoint.sh "$@"
