variable "aws-region"          { }

variable "application-name"    { }

variable "ec2-m"               { }
variable "ec2-w1"              { }
variable "ec2-w2"              { }
variable "ec2-type"            { }

variable "vpc-id"              { }
variable "az-pub"              { }
variable "cidr-pub"            { }
variable "sub-name"            { }

variable "env"                 { }

# Provider defaults settings
provider "aws" {
  region = "${var.aws-region}"
  profile = "default"
}


module "public_subnet" {
  source = "modules/network" 

  vpc_id                  = "${var.vpc-id}"
  cidr_block              = "${var.cidr-pub}"
  availability_zone       = "${var.az-pub}"
  name                    = "${var.sub-name}"
}
