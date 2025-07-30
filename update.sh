#!/bin/bash
rsync -a /var/log/webservices/* /var/log/PolymorphicServiceDelivery/
rsync -a /root/100*.sh /var/log/PolymorphicServiceDelivery/

cd /var/log/PolymorphicServiceDelivery/
git add .
git commit -m "Sync: $(date '+%Y%m%d.%H%M%S')" >/dev/null 2>&1
git push origin main
