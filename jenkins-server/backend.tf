terraform {
  backend "s3" {
    bucket         = "aws-eks-tf"
    region         = "eu-west-3"
    key            = "server/terraform.tfstate"
    dynamodb_table = "lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}