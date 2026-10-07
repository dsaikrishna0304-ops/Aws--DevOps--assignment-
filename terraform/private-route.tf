resource "aws_route_table" "private_rt" {
vpc_id = aws_vpc.main.id
tags = {
Name = "private-route-table"
}
}
resource "aws_route" "private_nat_access" {
route_table_id = aws_route_table.private_rt.id
destination_cidr_block = "0.0.0.0/0"
nat_gateway_id = aws_nat_gateway.nat.id
}
resource "aws_route_table_association" "private_subnet_1_assoc" {
subnet_id = aws_subnet.private_subnet_1.id
route_table_id = aws_route_table.private_rt.id
}
resource "aws_route_table_association" "private_subnet_2_assoc" {
subnet_id = aws_subnet.private_subnet_2.id
route_table_id = aws_route_table.private_rt.id
}