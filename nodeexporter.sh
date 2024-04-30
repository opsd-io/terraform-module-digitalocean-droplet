cd /tmp

wget https://github.com/prometheus/node_exporter/releases/download/v1.8.0/node_exporter-1.8.0.linux-amd64.tar.gz

#check MD5

tar -xf node_exporter-1.0.1.linux-amd64.tar.gz

cd node_exporter-1.0.1.linux-amd64/

cp node_exporter /usr/local/bin/

useradd -r node_exporter

nano /etc/systemd/system/node_exporter.service

systemctl daemon-reload

service node_exporter status

service node_exporter start
