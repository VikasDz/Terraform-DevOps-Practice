terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "aws_ec2_test" {
        count = 1
        ami = "ami-053b0d53c279acc90"
        instance_type = "t2.micro"
        tags = {
               Name = "Terraform-${count}-Test"
  }
}
