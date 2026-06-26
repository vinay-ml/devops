module "module_test" {
    source = "../terraform-aws-instance"
    project =  "roboshop"
    environment = "dev"
    component = "testing"
    instance_type = "t3.small"
    sg_ids = ["sg-01a68543d3050cca6"]
}