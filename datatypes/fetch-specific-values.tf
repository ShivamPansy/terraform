resource "aws_instance" "my-ec2-instance" {
  ami = "ami-0d473344347276854"
  #instance_type = var.types["us-east-1"]
  instance_type = var.list[2]
}

variable "list" {
  type    = list(any)
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "types" {
  type = map(any)
  default = {
    us-east-1  = "t2.micro"
    us-west-2  = "t2.large"
    ap-south-1 = "t2.nano"
  }
}