terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform-sf-ec2-001" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  user_data = <<EOF
#!/bin/bash
echo "Copying SSH Key to server"
echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDPyH8lmrcrW9U4fgcv4YnCu3sB6B7hTnt1ZQpZ/f9iPEdarYqCSAA+dr0GHMNzqFR+S8p8VfaKv2by+46271kfyc+Dd0cSaknmyL7KF5NL51QHuQx87j10j+HyVQ3c5FkHOhtB4/G0X7zs0nyWNq8YqDSCFUhDlbrqGMscBBKL9lKTmtewtv1iJibVPIBrpsi4sPfslAudfY/XXDxPfkhAisuSLlY05Mor7LptvftoFaBVJWtPxC0/4svjAuWDN2uzEVNW3obue3jH8DHcvp8Iwcnxib8cEjrZSXK7zOfRrersiA+RcvLmleT0b9JDHjJcEWq+sF1oZk2mkw4kBtKXR0wA2DzBpZ4O/q6NBp5U9m9krdPqB2aaARIqlTRJ2xXkCK9zaccKvkSTOvPSWtr5vp6YM4Mup79252F6O0pKHzHcmBwGyL+6O9ywBklrx7bO7uUQgoUFZHQWe2DVPea28okZZTdDSiaYTGs4xxKDN0yxBID82TBHsrOhszQKf4fPdkrH2FIthwQB0FKaUQwTZWP1og3fD2yIgv68B2exGgvIUbSYlkHEQwb22Hp5K97UR9o4be1/Va1+1YZDvkn1yqDkOHK1YsVsYrY0MqmHkmqI/3/aacKpaGXY8tNsXga26KO/5v0LXe6vfsMcSBsgK+ktPlpYL66JTxp/vTSTFQ==" >> /home/ubuntu/.ssh/authorized_keys
EOF

  tags = {
    Name = "terraform-sf-ec2-001"
  }
}