resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-09c813fb71547fc4f" # Replace with a valid AMI ID for your region
  instance_type = var.environment == "dev" ? "t2.mciro" : "t3.medium"
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  tags = {
    Name = "MyTerraformEC2"
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