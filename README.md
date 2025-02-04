# ec2-to-rds terraform

## Project Overview
This project is a HashiCorp Terraform infrastructure as code (IaC) solution that creates an EC2 instance, and an RDS instance in AWS. The EC2 instance uses a user data file to install, configure and login into the RDS instance. From the userdata.sh file, it gets the database endpoint and the password in the variable.tf file. This is an efficient way to quickly install an RDS database and have it connected to an EC2 instance in a private subnet. 
 
![Architectural Diagram](https://i.postimg.cc/VsRqK5FZ/auto-connect-rds-ec2.png)

##Technolgoies 
* Cloud Provider - AWS
* Services Used - RDS, and EC2
* Programming Language - Bash

##Setup Guide
### Clone the Repository
```bash
git clone https://github.com/Lakunzo/ec2-to-rds-terraform
```
### Variable.tf
1. Enter your AWS credentials for Secret Key, Access ID and Session token (optional)
2. Enter the password to use when creating your database
