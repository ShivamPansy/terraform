provider "aws" {
    region = "ap-south-1"
}

module "consul" {
  source = "../../module/ec2"
  ami = "ami-123"
  instance_type = "t2.micro"
}

resource "aws_eip" "this" {
  domain = "vpc"
  instance = module.consul.instance_id
}