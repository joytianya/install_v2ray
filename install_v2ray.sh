#!/usr/bin/bash
#https://github.com/Jrohy/multi-v2ray
#vi /etc/systemd/system/v2ray.service
# Environment="V2RAY_VMESS_AEAD_FORCED=false"
systemctl stop firewalld.service
systemctl disable firewalld.service
source <(curl -sL https://multi.netlify.app/v2ray.sh) --remove
source <(curl -sL https://multi.netlify.app/v2ray.sh) --zh
v2ray update v4.45.2
v2ray update v4.45.2
