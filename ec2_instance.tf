#creating the ec2 instance
resource "aws_instance" "dbinstance" {
   ami = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
  key_name = ""
  security_groups = [ "" ]
  availability_zone = "us-east-1a"
  user_data = filebase64("userdata.sh")
  tags = {
    "Name" = "DBLinuxSRV"
  }
}