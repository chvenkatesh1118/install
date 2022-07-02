#mkdir /opt/prometheus
#wget https://github.com/prometheus/prometheus/releases/download/v2.36.2/prometheus-2.36.2.linux-amd64.tar.gz -P /opt/prometheus/
#tar  -xvzf /opt/prometheus/prometheus-2.36.2.linux-amd64.tar.gz /opt/prometheus
#mv /opt/prometheus/prometheus-2.36.2.linux-amd64 /opt/prometheus/prometheus
#cd /opt/prometheus/prometheus
#./prometheus
#cp -r . /usr/local/bin/prometheus

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

#!/bin/bash

if [ $(id -u) -ne 0 ]; then
  echo "You should run as root user"
  exit 1
fi

if [ -d /opt/prometheus ]; then
  rm -rf /opt/prometheus
fi

URL=$(curl -L -s https://prometheus.io/download/  | grep tar | grep prometheus- | grep linux-amd64  | sed -e "s|>| |g" -e 's|<| |g' -e 's|"| |g' |xargs -n1 | grep ^http | tail -1)

FILENAME=$(echo $URL | awk -F / '{print $NF}')
DIRNAME=$(echo $FILENAME | sed -e 's/.tar.gz//')

cd /opt
curl -s -L -O $URL
tar -xf $FILENAME
rm -f $FILENAME
mv $DIRNAME prometheus

curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/prometheus-server/prometheus.service >/etc/systemd/system/prometheus.service
systemctl enable prometheus
systemctl start prometheus