ps -ef | grep infa_fload | awk '{print $0,$2}'



ps -ef | awk '/infa_fload/ {print $0,$2}'






ps -ef | grep infa_fload | awk '{if ($1=="edwtdadm" && $3=='1' && $9=="*infa_fload*") print $3, "    ",$5,$9}'


ps -ef | grep infa_fload | awk '{if ($1=="edwtdadm" && $3=='1') print $2,$3, "    ",$5,$9}'



ps -ef | grep infa_fload | awk '{if ($1=="edwtdadm" && $3=='1') print $2}' | kill -9

