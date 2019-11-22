# Step one Configure the AWS Provider
provider "aws" {  
  region  = "${var.region}"
}



# remember to lock state file
terraform {
  backend "s3" {
    profile = "default"
    bucket = "terraform-remote-state-2019-10-24"
    key    = "terraform.tfstate"
    region = "eu-west-2"
    #dynamodb_table = "javahome-tf"
  }
}
# send to output . either on console or file or cloud
#output "vpc_cidr" {
 # value = "${aws_vpc.my_vpc.cidr_block}"
#}
