terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

    backend "s3" {
    bucket = "daws-bucket-remote-state"
    key    = "expense-vpc-eks"
    region = "us-east-1"
    dynamodb_table = "81s-locking"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}