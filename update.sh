#!/bin/bash
rsync -a /var/log/webservices/* /var/log/PolymorphicServiceDelivery/

git add .
git commit -m "Auto-sync on $(date '+%Y%m%d.%H%M%S')" >/dev/null 2>&1
git push origin main
