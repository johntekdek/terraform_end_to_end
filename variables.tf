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

variable "nat_amis"{
    type="map"
    default ={
        eu-west-2 ="ami-05f37c3995fffb4fd"
      

    }
}