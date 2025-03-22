resource "aws_nat_gateway" "natgateway1" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.public1

  tags = {
    Name = "natgateway1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "natgateway2" {
  allocation_id = aws_eip.example.id
  subnet_id     = aws_subnet.public2

  tags = {
    Name = "natgateway2"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}
