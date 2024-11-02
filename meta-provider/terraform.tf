provider "aws"{
    region  = "ap-southeast-1"
}


provider "aws"{
    alias = "usa"
    region  = "us-east-1"
}

resource "aws_security_group"  "sg_1" {
    name =  "prod-firewall"
}

resource "aws_security_group"  "sg_2" {
    provider = aws.usa
    name =  "stage-firewall"
}