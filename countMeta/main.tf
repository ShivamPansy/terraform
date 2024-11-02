variable "users" {
  type    = list(any)
  default = ["alice", "bob", "johncorner"]
}

resource "aws_instance" "myec2" {
  ami           = "ami-0ae8f15ae66fe8cda"
  instance_type = "t2.micro"
  count         = 3

  tags = {
    name = "payment-instrument-${count.index}"
  }

}

resource "aws_iam_user" "that" {
  name  = var.users[count.index]
  count = 3
}