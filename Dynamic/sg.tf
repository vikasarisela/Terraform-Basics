resource "aws_security_group" "allow-all" {
  name   = "allow-all"
  
  egress {
    from_port        = 0   # all ports 
    to_port          = 0    # all ports 
    protocol         = "-1"   # -1 all protocols 
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content {
    from_port        = ingress.value   # all ports 
    to_port          = ingress.value  # all ports 
    protocol         = "tcp"   # -1 all protocols 
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "allowing all in tags"
  }

}