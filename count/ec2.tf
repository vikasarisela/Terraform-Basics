resource "aws_instance" "my_ec2_instance" {
  count = 2
  ami           = "ami-09c813fb71547fc4f" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  tags = {
    Name = var.instances[count.index]
  }
  # Optional: User data to run a script on instance launch
  # user_data = file("install_script.sh")
}

resource "aws_security_group" "allow-all" {
  name   = "allow-alling"
  
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