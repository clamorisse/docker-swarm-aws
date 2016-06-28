// --------------------------------------------------------------
//              MODULE THAT CREATES A PUBLIC SUBNET
// --------------------------------------------------------------

variable vpc_id                   { }
variable cidr_block               { }
variable availability_zone        { }
variable name                     { }

resource "aws_subnet" "public" {
  vpc_id                  =  "${var.vpc_id}"
  cidr_block              =  "${var.cidr_block}"
  availability_zone       =  "${var.availability_zone}"
  map_public_ip_on_launch = true
  tags {
    Name = "${var.name}"
  }
}


