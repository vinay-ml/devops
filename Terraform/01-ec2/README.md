# How to Run

This folder contains Terraform code to create an AWS EC2 instance and security group.

## Prerequisites

- Terraform installed
- AWS CLI installed
- AWS credentials configured

Check AWS authentication:

```sh
aws sts get-caller-identity
```

## Run Terraform

Run all commands from this folder:

```sh
cd /Users/vinay/Documents/work/devops/Terrafoorm/01-ec2
```

Initialize Terraform:

```sh
terraform init
```

Preview the changes:

```sh
terraform plan
```

Create the resources:

```sh
terraform apply
```

When Terraform asks for confirmation, type:

```sh
yes
```

## Destroy Resources

To delete the created AWS resources:

```sh
terraform destroy
```

When Terraform asks for confirmation, type:

```sh
yes
```
