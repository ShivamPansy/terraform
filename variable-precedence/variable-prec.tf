resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0ae8f15ae66fe8cda"
  instance_type = var.instance_type
}