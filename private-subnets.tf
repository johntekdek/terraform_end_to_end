resource "aws_subnet" "private" {
    count = "${length(slice(local.az_names,0,2))}"
    vpc_id = "${aws_vpc.my_app.id}"
    cidr_block = "${cidrsubnet(var.vpc_cidr,8,count.index +length(local.az_names))}"
    availability_zone = "${local.az_names[count.index]}"

   tags={
     Name = "PrivateSubnet-${count.index + 1}"
   }
  
}

resource "aws_instance" "nat"{
    ami = "${var.nat_amis[var.region]}"
    instance_type = "t2.micro"
    subnet_id = "${aws_subnet.public.*.id[0]}"
    source_dest_check = false
 
 
    tags ={
        Name="JavahomeNat"
    }
}



resource "aws_route_table" "privatert" {
  vpc_id = "${aws_vpc.my_app.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_instance.nat.id}"
  }

    tags = {
    Name = "JavaHomePrivateRT"
  }
}

resource "aws_route_table_association" "private_rt_association" {
  count = "${length(slice(local.az_names,0,2))}"
 
  subnet_id      = "${aws_subnet.private.*.id[count.index]}"
  route_table_id = "${aws_route_table.privatert.id}"
}