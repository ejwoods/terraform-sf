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
  ami = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-sf-ec2-001"
  }
}