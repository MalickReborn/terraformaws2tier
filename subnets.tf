resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = eu-west-1a
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet_public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = eu-west-1b
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet_public2"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.70.0/24"
  availability_zone = eu-west-1a

  tags = {
    Name = "subnet_private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.80.0/24"
  availability_zone = eu-west-1b

  tags = {
    Name = "subnet_private2"
  }
}
