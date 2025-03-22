resource "aws_nat_gateway" "natgateway1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public1

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]

  tags = {
    Name = "natgateway1"
  }

}

resource "aws_nat_gateway" "natgateway2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public2

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]

  tags = {
    Name = "natgateway2"
  }

}
