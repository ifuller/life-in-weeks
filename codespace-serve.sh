#/bin/bash
hugo serve --baseURL="https://${CODESPACE_NAME}-1313.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}/" --appendPort=false
