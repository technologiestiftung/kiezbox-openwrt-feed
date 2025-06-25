#!/bin/sh

domain=$(uci get kbproj.main.domain)

dig @8.8.8.8 ${domain} A +short |
grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$' |
while IFS= read -r ip; do
    /usr/sbin/nft add element inet fw4 redir { ${ip} }
done
