variable "target_region" {
    type = string
    default = "ap-southeast-1"
    description = "This region is used to create required AWS infra"  
}
variable "vpc_cidr_range" {
    type = string
    default = "10.10.0.0/16"
    description = "This is vpc cidr range"  
}
variable "subnet_cidr" {
    type = list(string)
 # default = [ "10.10.0.0/24","10.10.1.0/24","10.10.2.0/24","10.10.3.0/24","10.10.4.0/24","10.10.5.0/24"]
    description = "This is subnet CIDR Range"  
}

variable "subnet_az" {
    type = list(string)
   #default = ["ap-southeast-1a","ap-southeast-1b","ap-southeast-1a","ap-southeast-1b","ap-southeast-1a","ap-southeast-1b"]
    description = "Availability zones "
  
}
variable "subnet_tags" {
    type = list(string)
    #default = [ "web1-tf","web2-tf","app1-tf","app2-tf","db1-tf","db2-tf" ]
  
}
/*
variable "s3bucket" {
    type = string
    default = "s3-from-aws-tf"
    description = "this is s3 bucket"
  
}
*/