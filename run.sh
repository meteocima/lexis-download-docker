#!/bin/bash

export WEBDROPS_AUTH_URL='https://testauth.cimafoundation.org/auth/realms/webdrops/protocol/openid-connect/token'
export WEBDROPS_URL='http://webdrops.cimafoundation.org/app/'
export WEBDROPS_CLIENT_ID='webdrops'

cd /output
/root/lexisdn $START_DATE $DOWNLOAD_TYPE
