#Specifying the provider credentials
provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

#creating the rds instance
resource "aws_db_instance" "mydbinstance" {
    identifier = "fincon"
  allocated_storage = 20
  engine = "mysql"
  engine_version = "8.0.40"
  instance_class = "db.t4g.micro"
  db_name = "fincondb"
  username = "admin"
  password = var.db_password
  publicly_accessible = false
  storage_type = "gp2"
  parameter_group_name = "default.mysql8.0"
  vpc_security_group_ids = [aws_security_group.dbsecgrp.id]
  skip_final_snapshot = true
}

#creating the db security group
resource "aws_security_group" "dbsecgrp" {
  name = "finconsg"

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}