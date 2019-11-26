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

variable "web_amis"{
    type="map"
    default ={
        eu-west-2 ="ami-05f37c3995fffb4fd"     

    }
}

variable "web_instance_type"{
    description = "choose instance type for your web "
    type = "string"
    default = "t2.micro"
}

variable "web_tags" {
    
    type = "map"
    default ={
    Name = "Webserver"}
}

variable "web_ec2_count" {
    description = "choose number ec2 instances for web"
    type= "string"
    default="1"
  
}
