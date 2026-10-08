#!/bin/bash

for service in  sshd firewalld chronyd
do
   status=$(systemctl is-active "$service")
   echo "$service : $status"
done

