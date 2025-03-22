resource "aws_route_table_association" "rtapublic1" {
  subnet_id      = aws_subnet.public1
  route_table_id = aws_route_table.public
}

resource "aws_route_table_association" "rtapublic2" {
  subnet_id      = aws_subnet.public2
  route_table_id = aws_route_table.public
}

resource "aws_route_table_association" "rtaprivate1" {
  subnet_id      = aws_subnet.private1
  route_table_id = aws_route_table.private1
}

resource "aws_route_table_association" "rtaprivate2" {
  subnet_id      = aws_subnet.private2
  route_table_id = aws_route_table.private2
}
