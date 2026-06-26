module "vpc" {
    # source = "../terraform-aws-vpc"
    source = "git::https://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@github.com/vinay-ml/devops.git//Terraform/16-terraform-aws-vpc?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = true
}

