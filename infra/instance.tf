variable "COUNT" {}
variable "NAME" {}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "EC2" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t2.micro"
  security_groups = ["sg-03439c9546a230549"]
  subnet_id = "subnet-0f42b250c3cf1d75c"
  count = var.COUNT

  tags = {
    Name = var.NAME
  }
}


output "privateip" {
      value = aws_instance.EC2.private_ip
}
