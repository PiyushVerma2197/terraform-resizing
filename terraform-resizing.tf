terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZNTW6QXGZSVO5KU5"
  secret_key = "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"
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terraform" {
  ami           = "ami-05dbd1926bfb06723"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform"
  }
}

resource "aws_ec2_instance_state" "terraform" {
  instance_id = "i-00f9c34877b417374"
  state       = "stopped"
}
