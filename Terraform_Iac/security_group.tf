resource "aws_security_group" "netsecops_sg" {
  name = "NetSecOps_SG"
  description = "Security group for NetSecOps"
  vpc_id = module.netsecops_vpc.vpc_id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
}