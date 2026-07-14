terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.15.0"

  backend "s3" {
    bucket = "sahil-terraform-state-548065570271"
    key    = "platform-engineering/terraform.tfstate"
    region = "var.aws_region"
  }
}

provider "aws" {
  region = "var.aws_region"
}
