#!/bin/sh

domain=$(uci get kbproj.main.domain)

# function to update the redirect list, which prevents clients from reaching the internet domain (via IPv4)
# TODO: also handle AAAA/v6
# TODO: don't hardcode google dns?
update_redir() {
    {
        dig @8.8.8.8 ${domain} A +short 2>/dev/null |
        grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$' |
        while IFS= read -r ip; do
            doas /usr/sbin/nft add element inet fw4 redir { ${ip} }
        done
    } >/dev/null 2>&1
}

#TODO: we should probably sanity check the REMOTE_ADDR (to be in the right subet e.g.)
# to reduce the effects of malicious requests with spoofed IPs a bit

case "$REQUEST_URI" in
*/status)
# check if we are captive
doas /usr/sbin/nft get element inet fw4 freed { ${REMOTE_ADDR} } >/dev/null 2>&1
if [[ $? -eq 0 ]]; then
  captive=false
else
  captive=true
fi
# return response
cat <<EOF
Content-Type: application/captive+json

{
   "captive": ${captive},
   "venue-info-url": "https://${domain}/",
   "user-portal-url": "https://${domain}/"
}
EOF
;;
*/setmefree)
# realease client from captivity
doas /usr/sbin/nft add element inet fw4 freed { ${REMOTE_ADDR} } 2>&1 >/dev/null
if [[ $? -eq 0 ]]; then
  echo -ne "Status: 200\n\n{}"
else
  echo -ne "Status: 500\n\n{}"
fi
# update redirect everytime a client gets freed should be enough
update_redir
;;
*/jailmepls)
# realease client from captivity
doas /usr/sbin/nft delete element inet fw4 freed { ${REMOTE_ADDR} } 2>&1 >/dev/null
if [[ $? -eq 0 ]]; then
  echo -ne "Status: 200\n\n{}"
else
  echo -ne "Status: 500\n\n{}"
fi
;;
*)
echo -ne "Status: 404\n\n"
;;
esac



# Output the JSON data
