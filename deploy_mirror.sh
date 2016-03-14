#!/bin/bash
#Usage:
#MIRROR_HOST=dell-per610-01.lab.eng.brq.redhat.com ./deploy_mirror.sh

set -euo pipefail

echo "---"
echo "Will install the repo in:"
echo $MIRROR_HOST
echo "---"

ansible-playbook \
    -i "$MIRROR_HOST," \
    --extra-vars "target=$MIRROR_HOST" \
    mirror_tasks.yml


