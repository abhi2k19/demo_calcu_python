#!/bin/bash
sudo apt update -y
sudo apt install ruby-full
sudo apt install wget
cd /home/ubuntu
sudo wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
if sudo systemctl status codedeploy-agent | grep "running"; then
    echo "CodeDeploy agent is running"
else
    echo "Starting CodeDeploy agent"
    sudo systemctl start codedeploy-agent
    sudo systemctl enable codedeploy-agent
fi
sudo systemctl status codedeploy-agent