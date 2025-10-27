resource "aws_instance" "my_ec2_instance" {

  tags = {
    terraform = "true"
  }
  # Optional: User data to run a script on instance launch
  # user_data = file("install_script.sh")
}

resource "aws_security_group" "allow-all" {
  name   = "allow-all"
  
  egress {
    from_port        = 0   # all ports 
    to_port          = 0    # all ports 
    protocol         = "-1"   # -1 all protocols 
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    from_port        = 0   # all ports 
    to_port          = 0    # all ports 
    protocol         = "-1"   # -1 all protocols 
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allowing all in tags"
  }

}