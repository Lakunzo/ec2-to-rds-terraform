# ec2-to-rds terraform

## Project Overview
This project is a HashiCorp Terraform infrastructure as code (IaC) solution that creates an EC2 instance, and an RDS instance in AWS. The EC2 instance uses a user data file to install, configure and login into the RDS instance. From the userdata.sh file, it gets the database endpoint and the password in the variable.tf file. This is an efficient way to quickly install an RDS database and have it connected to an EC2 instance in a private subnet. 
 
![Architectural Diagram](https://i.postimg.cc/VsRqK5FZ/auto-connect-rds-ec2.png)

## Technolgoies 
* Cloud Provider - AWS
* Services Used - RDS, and EC2
* Programming Language - Bash

## Setup Guide
### Clone the Repository
```bash
git clone https://github.com/Lakunzo/ec2-to-rds-terraform.git
```
### Variable.tf
1. Enter your AWS credentials for Secret Key, Access ID and Session token (optional)
2. Enter the password to use when creating your database

### UserData.sh
Contains the bash script to install Mysql client and connect to the MysQL instance

### RDS Instance
Contains the terraform resources needed to create an RDS

### EC2 Instance
Contains the terraform resources needed to create an EC2 instance

### Run Terraform
1. Initialize Terraform backend
   ```bash
   terraform init
2. Validate the Terraform configuration
   ```bash
   terraform validate
3. Run the terraform plan to view the resources that will be created
   ```bash
   terraform plan
4. Run terraform apply to create the needed resources and type 'yes' to proceed
   ```bash
   terraform apply
5. Destroy all resources to clean up the environment
   ```bash
   terraform destroy
   

