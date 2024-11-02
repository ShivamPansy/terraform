variable "environemnt" {
  default = "development"
}

resource "aws_instance" "myec2" {
  instance_type = "t2.micro"
  ami           = "ami-0ae8f15ae66fe8cda"
} 