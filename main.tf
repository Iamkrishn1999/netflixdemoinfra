provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-05fa46471b02db0ce"
instance_type = "t2.medium"
key_name = "krushna"
vpc_security_group_ids = ["sg-03877bde6b76d53cc"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}
