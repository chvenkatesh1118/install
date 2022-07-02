mkdir /opt/prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.36.2/prometheus-2.36.2.linux-amd64.tar.gz -P /opt/prometheus/
tar  -xvzf /opt/prometheus/prometheus-2.36.2.linux-amd64.tar.gz /opt/prometheus
mv /opt/prometheus/prometheus-2.36.2.linux-amd64 /opt/prometheus/prometheus
cd /opt/prometheus/prometheus
./prometheus
cp -r . /usr/local/bin/prometheus

#then edit /etc/systemd/system/prometheus.service
#bin thiss copy below text, then use systemctl start prometheus
#
#[Unit]
#Description=Prometheus
#Wants=network-online.target
#After=network-online.target
#
#[Service]
#Type=simple
#WorkingDirectory=/opt/prometheus
#ExecStart=/opt/prometheus/prometheus
#
#[Install]
#WantedBy=multi-user.target