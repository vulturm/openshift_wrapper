#!/bin/bash
#-- OC wrapper over wrapper ;-) by Mihai Vultur <xanto@egaming.ro>

PROFILE="xan-test"
COMMAND=${1:-up}
OPTIONS="^(up|down)$"

#-- validate params
if ! [[ $COMMAND =~ $OPTIONS ]]; then
  echo "Valid syntax: $0 [${OPTIONS//[^[:alnum:]|]/}]"
  exit 1
fi

oc-cluster-wrapper/oc-cluster $COMMAND $PROFILE --public-hostname 192.168.100.30  --routing-suffix apps.192.168.100.30.local
