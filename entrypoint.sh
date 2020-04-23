#!/usr/bin/env bash

#
# Loads settings from the Vault, then loads IB Gateway
#

LOGIN=$(curl http://vultrkv.in.okinta.ge:7020/api/kv/ib_paper_login)
export LOGIN

PASSWORD=$(curl http://vultrkv.in.okinta.ge:7020/api/kv/ib_paper_password)
export PASSWORD

export MODE=paper

# Now run IB Gateway
exec /entrypoint.sh "$@"
