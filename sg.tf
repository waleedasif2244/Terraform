resource "aws_security_group" "sg" {
  name        = "ec2-sg"
  description = "security group for ec2 machine"

  ingress   {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH port"
  }




ingress   {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "http port"
  }


#egress   {
#    from_port   = 0
 #   to_port     = 0
  #  protocol    = "-1"
   # cidr_blocks = ["0.0.0.0/0"]
  #}

}









