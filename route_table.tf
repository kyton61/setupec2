resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}-public"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}-private"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}
