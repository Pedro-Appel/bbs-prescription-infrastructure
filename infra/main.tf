terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region_aws
}

resource "aws_instance" "bbs-blockchain" {
    ami = "ami-007855ac798b5175e"
    instance_type = var.instance
    key_name = var.keys
    tags = {
        Name = "BBS - CHAIN"
    }
}

resource "aws_key_pair" "ssh-pem" {
    key_name = var.keys
    public_key = file("${var.keys}.pub")
  
}

output "public-ip" {
  value = aws_instance.bbs-blockchain.public_ip
  
}