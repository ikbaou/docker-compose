#!bin/bash
#rm -rf /etc/loolwsd/*.pem
/bin/cp -f /etc/nginx/certs/${domain}/key.pem        /etc/loolwsd/key.pem
/bin/cp -f /etc/nginx/certs/${domain}/cert.pem       /etc/loolwsd/cert.pem
/bin/cp -f /etc/nginx/certs/${domain}/fullchain.pem  /etc/loolwsd/ca-chain.cert.pem

yourfilenames=`ls /etc/loolwsd/*.pem`
for eachfile in $yourfilenames
do
   echo $eachfile
done

#/bin/cp -f /scripts/certs/*.pem /etc/loolwsd
#/bin/mv /etc/loolwsd/fullchain.pem /etc/loolwsd/ca-chain.cert.pem

export DONT_GEN_SSL_CERT=true
chmod u+x /start-libreoffice.sh
./start-libreoffice.sh
