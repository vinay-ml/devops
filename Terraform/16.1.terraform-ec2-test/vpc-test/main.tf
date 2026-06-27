module "vpc" {
  source = "git::https://github.com/vinay-ml/devops.git//Terraform/16-terraform-aws-vpc-module?ref=main"

  project             = var.project
  environment         = var.environment
  is_peering_required = true
}
