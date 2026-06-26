locals {
    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = "true"
        Name = local.common_name
    }
    common_name = "${var.project}-${var.environment}" // roboshop-dev
    //////////////////////////////////////////////////////////////
    az_names = slice(data.aws_availability_zones.available.names, 0, 2)
    // Pick the first 2 available AZs in this region for subnet placement.
    // data.aws_availability_zones.available.names returns all AZs from AWS, e.g.:
    //   ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
    // slice(list, start, end) returns items from start index up to end (end is exclusive).
    // Example: slice(["us-east-1a", "us-east-1b", "us-east-1c"], 0, 2)
    //   → start at index 0, stop before index 2 → ["us-east-1a", "us-east-1b"]
    // Used in main.tf: local.az_names[count.index] assigns one AZ per subnet.
    //   count.index 0 → "us-east-1a" (public subnet 10.0.1.0/24)
    //   count.index 1 → "us-east-1b" (public subnet 10.0.2.0/24)
    //////////////////////////////////////////////////////////////
}