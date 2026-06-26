// Creates one EC2 instance for this Terraform demo.
resource "aws_instance" "terraform_demo" {
    // AMI ID decides which operating system image is used for the instance.
    ami = "ami-0220d79f3f480ecf5"
    // t3.micro is a small instance type suitable for basic testing.
    instance_type = "t3.micro"
    // Attach the security group created below. AWS expects this value as a list.
    vpc_security_group_ids = [aws_security_group.allow_terraform.id] // list
    // Tags are labels/metadata that help identify the resource in AWS.
    tags = {
        Name = "terraform-demo-1"
        Project = "roboshop"
        Environment = "dev"
    }
}

// Creates a security group in the default VPC because no custom VPC ID is set.
resource "aws_security_group" "allow_terraform" {
  name        = "allow_terraform"
  description = "Allow TLS inbound traffic and all outbound traffic"

  // Outbound traffic rule: allows the instance to connect anywhere.
  egress {
    from_port        = 0
    to_port          = 0
    // -1 means all protocols.
    protocol         = "-1" // all traffic
    // 0.0.0.0/0 means any IPv4 destination.
    cidr_blocks      = ["0.0.0.0/0"]
  }

  // Tags make the security group easier to find and manage.
  tags = {
    Name = "allow_terraform"
    Project = "roboshop"
    Environment = "dev"
  }
}