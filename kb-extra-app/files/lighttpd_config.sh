#!/bin/sh

domain=$(uci get kbproj.main.domain)

# Lighttpd configuration
cat <<EOF
\$SERVER["socket"] == ":443" {
    ssl.engine = "enable"
    ssl.pemfile = "/opt/kb-certs/fullchain.pem"
    ssl.privkey = "/opt/kb-certs/privkey.pem"
    server.document-root = "/opt/kb-www/"
}

\$HTTP["scheme"] == "http" {
    url.redirect-code = 302
    url.redirect = ( "" => "https://$domain/" )
}
EOF
