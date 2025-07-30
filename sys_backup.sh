#!/bin/bash
#Dr. Paul W. Poteete 20250404.1524hrs
#
var_date=$(date +%Y%m%d%H%M)

rsync -ur /var/log/webservices /root/Results/
tar czf /root/Results/${var_date}_webservices.tar.gz /var/log/webservices
