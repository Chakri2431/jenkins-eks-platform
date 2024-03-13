output "vpc_id_output" {
        value = aws_vpc.Project_vpc.id
}

output "subnet_id_output" {
        value = aws_subnet.Project-subnet[*].id
}

output "vpc_default_rtb_id_output" {
        value = aws_vpc.Project_vpc.default_route_table_id
}
