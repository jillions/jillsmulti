#!/bin/bash

set -xe

source variables.sh

#Get the DB, PLugins, and Uploads from DEVELOP
mkdir local;
rsync -rav -e 'ssh -p 22 -o UserKnownHostsFile=/dev/null -o LogLevel=quiet -o StrictHostKeyChecking=no' ${WP_DEV_SSH}:sites/${WP_DEV_INSTALL}/back-for-local.sql local/;
rsync -rav -e 'ssh -p 22 -o UserKnownHostsFile=/dev/null -o LogLevel=quiet -o StrictHostKeyChecking=no' ${WP_DEV_SSH}:sites/${WP_DEV_INSTALL}/wp-content/plugins local/;
rsync -rav -e 'ssh -p 22 -o UserKnownHostsFile=/dev/null -o LogLevel=quiet -o StrictHostKeyChecking=no' ${WP_DEV_SSH}:sites/${WP_DEV_INSTALL}/wp-content/uploads local/;
zip -r local.zip local;

echo "ZIP file created.";