#!/bin/sh

CLIENT_ID=$(sudo cat /etc/rsc/workspace.json | jq '.oauth2_application_client_id')

cat <<EOF > /etc/nginx/app-location-conf.d/constants.conf
set \$client_id $CLIENT_ID;
set \$authorization_endpoint $AUTHORIZATION_ENDPOINT;
set \$userinfo_endpoint $USERINFO_ENDPOINT;
set \$header_name '"$HEADER_NAME"';
EOF
