terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  cloud {
    organization = "sport-sense-say"
    workspaces {
      name = "terraform-tutorial"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
#  region = "us-east-1"
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
#   ami           = "ami-830c94e3"
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
  

  tags = {
    Name = "mam-appserver-instance"
    # For fun, I use a variable to specify the owner - me.
    created-by = var.owner
    # For fun, I'm using the timestamp function to tag the date/time when we run this plan
    created-on = timestamp()
    demo       = var.demo
  }
}

resource "aws_spot_instance_request" "spot_app_server" {
#   ami           = "ami-830c94e3"
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
 

  tags = {
    Name = "mam-spot-appserver-instance"
    # For fun, I use a variable to specify the owner - me.
    created-by = var.owner
    # For fun, I'm using the timestamp function to tag the date/time when we run this plan
    created-on = timestamp()
    demo       = var.demo
  }
}
