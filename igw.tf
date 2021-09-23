resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}
