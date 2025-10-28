data "aws_ami" "ami_retrieval"{
owners = [ "973714476881" ]
most_recent = true

filter {
  name = "AMI name"
  values = ["RHEL-9-DevOps-Practice"]
}
filter {
  name = "Virtualization type"
  values = [ "hvm" ]
}
}

output "ami_id" {
  value = data.aws_ami.ami_retrieval.id
}

# with instance id we will get the aws instance details
data "aws_instance" "instance_info"{
  instance_id = "i-instance-id"
}

output "aws-instance" {
  value = data.aws_instance.instance_info 
}