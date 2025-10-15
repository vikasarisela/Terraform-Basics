resource "aws_instance" "my_ec2_instance_naming" {
  ami           = var.ami_id # Replace with a valid AMI ID for your region
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow-all.id]
  tags = {
    Name = "MyTerraformEC2"
    #tag will be added in the Name, in tags tab also it will add
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