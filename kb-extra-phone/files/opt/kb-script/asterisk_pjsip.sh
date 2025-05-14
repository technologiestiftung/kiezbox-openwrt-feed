#!/bin/sh

trunk_domain=$(uci get kb.main.trunk_domain)
trunk_base=$(uci get kb.main.trunk_base)
trunk_pw=$(uci get kb.main.trunk_pw)

# generate test users
for nr in 11 12 13 ; do
cat <<EOF
[test${nr}](basic_endpoint,phone_endpoint)
type=endpoint
auth=test${nr}
aors=test${nr}
callerid=00${trunk_base}${nr} <00${trunk_base}>
[test${nr}](single_aor)
type=aor
[test${nr}](userpass_auth)
type=auth
username=test${nr}
password=pass${nr}

EOF
done

# generate test users
for nr in 14 15 16 ; do
cat <<EOF
[test${nr}](basic_endpoint,webrtc_endpoint)
type=endpoint
auth=test${nr}
aors=test${nr}
callerid=00${trunk_base}${nr} <00${trunk_base}>
[test${nr}](single_aor)
type=aor
[test${nr}](userpass_auth)
type=auth
username=test${nr}
password=pass${nr}

EOF
done

# configure trunk, add only when this box has a trunk configured
if [ -n "${trunk_base}" ]; then
cat <<EOF
[trunk_main]
type=registration
transport=udp_transport
outbound_auth=trunk_main_auth
server_uri=sip:${trunk_domain}
client_uri=sip:00${trunk_base}@${trunk_domain}
contact_user=${trunk_base}
retry_interval=60
forbidden_retry_interval=600
expiration=1800
line=yes
endpoint=trunk_main

[trunk_main_auth]
type=auth
auth_type=userpass
password=${trunk_pw}
username=00${trunk_base}

[trunk_main]
type=endpoint
transport=udp_transport
context=trunk_main
disallow=all
allow=alaw,ulaw,g722
outbound_auth=trunk_main_auth
aors=trunk_main_aor
force_rport=yes
direct_media=no
ice_support=no
rtp_symmetric=yes
from_domain=${trunk_domain}
send_pai=yes

[trunk_main_aor]
type=aor
contact=sip:00${trunk_base}@${trunk_domain}

EOF
fi
