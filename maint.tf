# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
  access_key =""
  secret_key = ""
  token = ""
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}