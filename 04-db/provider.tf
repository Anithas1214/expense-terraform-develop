terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "expense-tf-dev"
    key    = "expense-dev-db-test"
    region = "us-east-1"
    dynamodb_table = "expense-tf-lock-dev"
  }
}
#provide authentication here
provider "aws" {
  region = "us-east-1"
}