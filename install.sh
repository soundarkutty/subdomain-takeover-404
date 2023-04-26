#!/bin/bash
read -p 'This script will only some tools and you have to manually check all the required tools installed or not, continue to installation? y/n'  -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]

echo "Installing Assetfinder"
go install github.com/tomnomnom/assetfinder@latest
sudo ln -s ~/go/bin/assetfinder /usr/bin/
echo "done Installing Assetfinder"

echo "Installing Amass"
GO111MODULE=on go get -v github.com/OWASP/Amass/v3/..
sudo ln -s ~/go/bin/assetfinder /usr/bin/
echo "done Installing Amass"



echo "Installing Subfinder"
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
sudo ln -s ~/go/bin/assetfinder /usr/bin/
echo "done Installing Subfinder"



echo -e "\n-----------------------INSTALLING for Subdomain takeover tool------------------------"
echo "Installing subjack"
go install -v github.com/haccer/subjack@latest
sudo ln -s ~/go/bin/assetfinder /usr/bin/
echo "done Installing subjack"


echo "Installing subzy"
go install -v github.com/LukaSikic/subzy@latest
sudo ln -s ~/go/bin/assetfinder /usr/bin/
echo "done Installing subzy"

