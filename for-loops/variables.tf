variable "environment" {
#  default = ["mongodb","redis"]
  
  default = {
    mongodb = "t2.micro"
    redis   = "t2.micro"
  }

}

variable "domainname" {
  default = "cloudskills.fun"
}