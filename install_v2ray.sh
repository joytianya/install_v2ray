#!/usr/bin/bash
#https://github.com/Jrohy/multi-v2ray

systemctl stop firewalld.service
systemctl disable firewalld.service
source <(curl -sL https://multi.netlify.app/v2ray.sh) --remove
source <(curl -sL https://multi.netlify.app/v2ray.sh) --zh
v2ray update v4.45.2

# 修改环境变量
# https://github.com/233boy/v2ray/issues/812
#vi /etc/systemd/system/v2ray.service
# Environment="V2RAY_VMESS_AEAD_FORCED=false"
# 或者ExecStart=/usr/bin/env v2ray.vmess.aead.forced=false /usr/bin/v2ray/v2ray -config /etc/v2ray/config.json
systemctl daemon-reload
systemctl restart v2ray.service
systemctl reset-failed v2ray.service
systemctl status v2ray.service

systemctl daemon-reload
systemctl restart v2ray
