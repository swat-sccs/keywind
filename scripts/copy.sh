#!/bin/bash
if [ -z $KEYCLOAK_DIR ]; then export KEYCLOAK_DIR='../'; fi
printf "Keycloak dir set to ${KEYCLOAK_DIR}!\n"
cp -rf ./theme/keywind ${KEYCLOAK_DIR}/themes/
printf "Copied theme to themes dir!\n"
