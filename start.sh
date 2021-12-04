#!/bin/sh

cat << EOF > /etc/v2ray/config.json
{
    "log": {
        "loglevel": "none"
    },
    "policy": {
        "levels": {
            "0": {
                "handshake": 5,
                "connIdle": 300,
                "uplinkOnly": 2,
                "downlinkOnly": 5,
                "statsUserUplink": false,
                "statsUserDownlink": false,
                "bufferSize": 10240
            }
        },
        "system": {
            "statsInboundUplink": false,
            "statsInboundDownlink": false,
            "statsOutboundUplink": false,
            "statsOutboundDownlink": false
        }
    },
    "inbounds": [
        {
            "port": $PORT,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "$UUID",
                        "alterId": 0,
                        "level": 0
                    }
                ],
                 "decryption": "none"
            },
            "streamSettings": {
                "network": "ws",
                "wsSettings": {
                  "path": "/$UUID-vmess"
                }
            }
        }
    ],
    "outbounds": [{"protocol": "freedom"}]
}
EOF

# Run V2Ray
/usr/bin/v2ray -config /etc/v2ray/config.json