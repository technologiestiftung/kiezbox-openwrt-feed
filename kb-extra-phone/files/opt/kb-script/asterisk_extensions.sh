#!/bin/sh

trunk_base=$(uci get kb.main.trunk_base)

if [ -n "${trunk_base}" ]; then
cat <<EOF
[globals]
base=${trunk_base}

[trunk_main]
exten => _${trunk_base}066,1,Gosub(echo-test,s,1)
exten => _${trunk_base}1.,1,NoOp(Calling: \${EXTEN})
 same => n,Set(target_user=PJSIP/test\${FILTER(0-9,\${EXTEN:\${LEN(\${base})}})})
 same => n,NoOp(Dialing \${target_user})
 same => n,Gosub(dial-extension,s,1,(\${target_user}))
exten => _${trunk_base}2.,1,NoOp(Calling: \${EXTEN})
 same => n,Set(target_user=PJSIP/user\${SPRINTF("%04d",\${EXTEN:\$[\${LEN(\${base})} + 1 ]})})
 same => n,NoOp(Dialing \${target_user})
 same => n,Gosub(dial-extension,s,1,(\${target_user}))
exten => _X.,n,Hangup()
exten => e,1,Hangup()
EOF
fi
