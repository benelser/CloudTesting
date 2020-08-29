terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "Test"  {
  ami           = "ami-0bbe28eb2173f6167"
  instance_type = "t2.micro"
  key_name = "ec2-keypair"

  tags = {
      Name = var.name
  }
}

