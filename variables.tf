variable "vpc_cidr" {
    description = "choose cidr vpc"
    type = "string"
    default= "10.0.0.0/16"  
}

variable "region"{
    description = "choose region for your stack"
    type = "string"
    default = "eu-west-2"
}
