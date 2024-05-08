cd /tmp

wget https://github.com/prometheus/node_exporter/releases/download/v1.8.0/node_exporter-1.8.0.linux-amd64.tar.gz

#check MD5

tar -xf node_exporter-1.8.0.linux-amd64.tar.gz

cd node_exporter-1.8.0.linux-amd64/

cp node_exporter /usr/local/bin/

useradd -r node_exporter

touch /etc/systemd/system/node_exporter.service

FILE="/etc/systemd/system/node_exporter.service"
  cat <<EOM | sudo tee $FILE
[[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

[Service]
User=node_exporter
Group=node_exporter
Type=simple
ExecStart=/usr/local/bin/node_exporter

[Install]
WantedBy=multi-user.target

EOM

systemctl daemon-reload

service node_exporter status

service node_exporter start
