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

# creting ec2

resource "aws_instance" "web" {
    ami = "ami-0c7217cdde317cfec"
    instance_type ="t2.micro"
tags={
      Name = "waleed_instance" 
      Environment= "DEV"

}

}