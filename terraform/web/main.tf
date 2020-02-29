provider "aws" {
    region="us-east-1"
}

variable "name" {
    description="Name of the web box at apply"
}

resource "aws_instance" "do_web_01" {
    ami = "ami-04b9e92b5572fa0d1"
    instance_type = "t2.micro"
    key_name = "devops_01"

    tags = {
        Name = "${var.name}"
    }
}