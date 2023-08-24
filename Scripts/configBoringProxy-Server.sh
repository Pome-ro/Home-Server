#! /bin/bash

read -p "Enter your admin domain" admindomain
./boringproxy server -admin-domain $admindomain