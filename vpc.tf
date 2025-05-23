resource "aws_vpc" "my-vpc" {
  #source = "terraform-aws-modules/vpc/aws"
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  /* azs             = ["eu-west-1a", "eu-west-1b", ]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"] */
  enable_dns_hostnames = true

  tags = {
    name = "my-vpc"
    Environment = "dev"
  }
}
