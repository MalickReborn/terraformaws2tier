resource "aws_route_table" "public" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw
  }

  tags = {
    Name = "rtpublic"
  }
}

resource "aws_route_table" "private1" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "10.0.70.0/24"
    nat_gateway_id = aws_nat_gateway.natgateway1
  }

  tags = {
    Name = "rtprivate1"
  }
}

resource "aws_route_table" "private2" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "10.0.80.0/24"
    nat_gateway_id = aws_nat_gateway.natgateway2
  }

  tags = {
    Name = "rtprivate2"
  }
}
