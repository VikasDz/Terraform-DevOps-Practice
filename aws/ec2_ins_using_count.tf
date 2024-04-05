terraform {
required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
}
}
        required_version = ">= 1.2.0"
}

provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "aws_ec2_test" {
        count = 4
        ami = "ami-053b0d53c279acc90"
        instance_type = "t2.micro"
        tags = {
     Name = "Terraform-${count.index}-Test"
  }
}


