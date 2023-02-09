#!/bin/bash

# Update sys
apt-get update
apt-get upgrade -y

# Install packages
apt-get install -y nano htop

# Set hostname
echo "Enter hostname: "
read hostname
hostnamectl set-hostname $hostname

# Create a user
echo "Enter username: "
read username
useradd $username
passwd $username

# Add user to sudo group
usermod -aG sudo $username

# Configure firewall
ufw allow 22
ufw allow 80
ufw allow 443
ufw enable

# Restart sys
reboot
