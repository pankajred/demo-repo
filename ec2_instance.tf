terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.44.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "my_ec2" {
  ami                         = "ami-0186908e2fdeea8f3"
  instance_type               = "t2.micro"
  associate_public_ip_address = true

  tags = {
    Name = "my_ec2_machine"
  }
}

