resource "aws_eip" "nat" {
  vpc = true
}

module "netsecops_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1"

  name = "NetSecOps_VPC"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a"]
  public_subnets  = ["10.0.101.0/24"]
  private_subnets = ["10.0.1.0/24"]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  reuse_nat_ips        = true
  external_nat_ip_ids  = [aws_eip.nat.id]

  tags = {
    Environment = "dev"
    Project     = "NetSecOps"
  }
}

