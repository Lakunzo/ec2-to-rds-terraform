#!/bin/bash
sudo apt update
sudo apt install mysql-client -y
mysql -h ${aws_db_instance.mydbinstance.endpoint} -u admin -p ${aws_db_instance.mydbinstance.password}