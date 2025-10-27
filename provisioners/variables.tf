variable "ami_id" {
    type = string   # data type mentioned here
 default = "ami-09c813fb71547fc4f"   # variable
 # if you dont give default then it will ask dynamically 
}

variable "instance_type" {

   #description is optional here
   default = "t2.micro"
   description = " description is optional it is for what is the variable about"

    #if you want to change value dynamically then the syntax is during terraform plan
    #terraform plan -var "variable_name=value"
    #terraform plan -var "instance_type=t3.micro"

}