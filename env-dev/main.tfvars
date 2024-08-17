env = "dev"
instance_type = "t3.small"
zone_id = "Z0989081MR5EB71EZVVK"


#vpc
vpc_cidr_block = "10.10.0.0/24"
default_vpc_cidr = "172.31.0.0/16"
default_vpc_id = "vpc-0f450660fc557f380"
default_route_table_id = "rtb-0fa092c875224fd5d"

frontend_subnets = ["10.10.0.0/27", "10.10.0.32/27"]
backend_subnets   = ["10.10.0.64/27", "10.10.0.96/27"]
db_subnets = ["10.10.0.128/27", "10.10.0.160/27"]
public_subnets = ["10.10.0.192/27", "10.10.0.224/27"]
availability_zones = ["us-east-1a", "us-east-1b"]
bastion_nodes = ["172.31.87.125/32"]
certificate_arn = "arn:aws:acm:us-east-1:566482504879:certificate/bc635217-4c57-4178-9db4-92e13fc0cce0"
kms_key_id = "arn:aws:kms:us-east-1:566482504879:key/1cecd22b-9e6c-4ef2-ba85-51238c43c75c"

















