#!/bin/sh

domain=$(uci get kbproj.main.domain)

# Set the correct content-type header for JSON response
echo "Content-Type: application/captive+json"
echo ""

# Output the JSON data
cat <<EOF
{
   "captive": false,
   "venue-info-url": "https://${domain}/",
   "user-portal-url": "https://${domain}/captive-portal/"
}
EOF
