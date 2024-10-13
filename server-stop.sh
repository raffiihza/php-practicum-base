#!/bin/bash

# Menghentikan server
sudo apache2ctl stop > /dev/null 2>&1
echo "Web server is stopped"