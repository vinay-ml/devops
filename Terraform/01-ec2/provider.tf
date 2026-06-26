terraform {
  // required_providers tells Terraform which provider plugins are needed.
  required_providers {
    aws = {
      // Official AWS provider maintained by HashiCorp.
      source  = "hashicorp/aws"
      // Pinning the version helps keep Terraform runs predictable.
      version = "6.48.0"
    }
  }
}

// Configure the AWS Provider.
provider "aws" {
  // Resources will be created in the us-east-1 AWS region.
  region = "us-east-1"
}