#!/bin/bash
sudo yum update
sudo yum -y install docker && yum upgrade docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
	pip3 install docker-compose -y
docker-compose -version
sudo docker build . -f nginxdockerfile -t nginxdockerimage
sudo docker build . -f sql-dockerfile -t sqldockerimage
sudo docker-compose up -d

sleep 2

sudo docker run -it -d --name majhanginx sqldockerimage
sudo docker run -it -d --name majhanginx nginxdockerimage

echo "public IP domainname" >> /etc/hosts
curl = "publicIP/path"

sleep 5
echo "container stoping"

sudo docker-compose down

sleep 2
echo "deleting docker containers & local files"
sudo docker rm $(docker ps -aq)
