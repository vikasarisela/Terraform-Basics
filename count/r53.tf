resource "aws_route53_record" "www" {
  zone_id = "Z000318531B8R0ODGMHO2"
  name    =  "${var.aws_instance.my_ec2_instance[count.index]}.${var.domain_name}" #mongodb.cloudskills.fun
  type    = "A"
  ttl     = 1
  records = [aws_instance.my_ec2_instance[count.index].private_ip] 
  allow_overwrite = true
}