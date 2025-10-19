<<<<<<< HEAD
variable "roboshop" {
#  default = ["mongodb","redis"]
  
  default = {
    mongodb = "t2.micro"
    redis   = "t2.micro"
  }

}

variable "domainname" {
  default = "cloudskills.fun"
=======
variable "environment" {
  default = "dev"
>>>>>>> 24284a1169883b2580aaa8b0cc685bc99b888657
}