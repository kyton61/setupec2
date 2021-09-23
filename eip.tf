resource "aws_eip" "nat_gateway" {
  vpc        = true
  depends_on = [aws_internet_gateway.igw]

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}-nat"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}
