#!/bin/bash
#Creating the services directory
mkdir -p /myservices/server

#Creating a run script
cat <<EOF >> /myservices/server/run
#!/bin/bash
exec /usr/bin/python3 -u -m http.server 80 2> /var/log/webserver.txt
EOF

#Do script exectuble
chmod +x /myservices/server/run

#Creating a symlink to daemontools service directory
ln -s /myservices/server /etc/service/server

#Starting the service
cd /etc/service && svscan
