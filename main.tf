provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_vpc" "waleed_vpc" {
  cidr_block = "10.0.0.0/24"
  
  tags = {
    Name = "waleed_vpc"
  }
}

# creating ec2

resource "aws_instance" "web" {
    ami = "ami-0c7217cdde317cfec"
    instance_type ="t2.micro"
    key_name      = "waleed-key"
    vpc_security_group_ids = [aws_security_group.sg.id]
    tags={
      Name = "waleed_instance" 
      Environment= "DEV"
  
} 
}

resource "aws_key_pair" "waleed_key" {
  key_name   = "waleed-key"
  public_key = file("${path.module}/tf_ec2_key.pub")
}


output "ec2_public_ip" {
  value=aws_instance.web.public_ip
}



   

















