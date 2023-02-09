#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root or with admin privileges."
  exit 1
fi

read -p "Enter the new hostname: " hostname

hostnamectl set-hostname $hostname

echo "New hostname is $hostname"
