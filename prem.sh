mkdir /etc/prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.36.2/prometheus-2.36.2.linux-amd64.tar.gz -P /etc/prometheus/
tar  -xvzf /etc/prometheus/prometheus-2.36.2.linux-amd64.tar.gz /etc/prometheus
mv /etc/prometheus/prometheus-2.36.2.linux-amd64 /tmp/prometheus/prometheus