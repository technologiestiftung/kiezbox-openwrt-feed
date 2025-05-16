#!/bin/sh

domain=$(uci get kbproj.main.domain)

# Lighttpd configuration
cat <<EOF
\$HTTP["scheme"] == "http" {
    url.redirect-code = 302
    url.redirect = ( "" => "https://$domain/captive-portal/" )
}
EOF
