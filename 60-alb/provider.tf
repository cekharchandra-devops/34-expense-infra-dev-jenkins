terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.84.0"
    }
  }
  backend "s3" {
    bucket = "expense-infra-remote-state-dev"
    key = "expense-infra-dev-eks-alb"
    region = "us-east-1"
    dynamodb_table = "expense-remote-state-locking"
  }
}
provider "aws" {
  region = "us-east-1"
}