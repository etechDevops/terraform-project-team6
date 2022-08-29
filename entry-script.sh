#!/bin/bash 
#Author:Prof Elvis N
sudo yum -y update && sudo yum -y install httpd
sudo systemctl start httpd && sudo systemctl enable httpd 
sudo echo "<h1>Deployed via Terraform and welcome to Etech Consulting</h1>" | sudo tee /var/www/html/index.html
#next portion is to install docker  and run an nginx container
sudo yum -y install docker
sudo systemctl start docker
sudo usermod -aG docker ec2-user
sudo docker container run -d -p 8080:80 nginx