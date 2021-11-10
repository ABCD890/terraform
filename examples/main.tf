provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "samples" {
  ami           = "ami-077fb3e62ddf0fa9a"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_samples.id, "sg-0c55b11a7ec4157c0"]

  tags = {
    Name = "samples"
  }
}

resource "aws_security_group" "allow_samples" {
  name        = "allow_tls"
  description = "Allow samples traffic"

  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  tags = {
    Name = "allow_samples"
  }
}


