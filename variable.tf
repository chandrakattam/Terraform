variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
    default = {
    us-east1 = ""
    us-east2 = ""
    us-east1 = ""
    us-east2 = ""
    }
}
variable "imagename" {}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}
variable "private_subnet_cidr" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
variable "private_subnet_name" {}
variable Main_Routing_Table {}
variable "azs" {
    description = "Run the EC2 instances in these Availabulity Zones"
    type = list
    default = ["us-east-1a","us-east-ib","us-east-ic"]
}
variable "environment" { default = "dev" }
variable "insatnce_type"{
    type = map
    default = {
        dev = "t2.nano"
        test = "t2.micro"
        prod = "t2.medium"
    }
}
