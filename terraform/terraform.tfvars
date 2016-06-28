// common terraform env variables
aws-region           = "us-east-1"

// app specific variables for production env - be careful

application-name    = "swarm" 

// names and type of instances that will be create

ec2-m               = "manager"
ec2-w1              = "worker1"
ec2-w2              = "worker2" 
ec2-type            = "t2-micro"

// vpc id, availability zone and cidr block for the Subnet 

vpc-id              = "vpc-d8e595bc"
az-pub              = "us-east-1a"
cidr-pub            = "172.31.1.0/24"
sub-name            = "Sub-Pub"

// Environment

env                 = "prod" 
