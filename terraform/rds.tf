resource "aws_db_subnet_group" "db_subnet_group" {
name = "db-subnet-group"
subnet_ids = [
aws_subnet.private_subnet_1.id,
aws_subnet.private_subnet_2.id
]
tags = {
Name = "db-subnet-group"
}
}
resource "aws_db_instance" "mysql" {
identifier = "app-mysql"
engine = "mysql"
engine_version = "8.0"
instance_class = "db.t3.micro"
allocated_storage = 20
username = "admin"
password = "devops123"
db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
skip_final_snapshot = true
publicly_accessible = false
}