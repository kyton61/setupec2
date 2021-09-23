resource "aws_vpc_endpoint" "s3" {
  vpc_id       = aws_vpc.vpc.id
  service_name = "com.amazonaws.${local.region}.s3"

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}-s3"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}

resource "aws_vpc_endpoint_route_table_association" "private_s3" {
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
  route_table_id  = aws_route_table.private.id
}
