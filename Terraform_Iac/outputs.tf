output "vpc_id" {
  value = module.netsecops_vpc.vpc_id
}

output "private_subnets" {
  value = module.netsecops_vpc.private_subnets
}

output "public_subnets" {
  value = module.netsecops_vpc.public_subnets
}

output "vpc_name"{
    value = module.netsecops_vpc.name
}