resource "aws_route53_record" "www" {
  for_each = aws_instance.my_ec2_instance   #looping output {}
  zone_id = "Z000318531B8R0ODGMHO2"
  name    =  "${each.key}.${var.domainname}" #mongodb.cloudskills.fun
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip] 
  allow_overwrite = true
}