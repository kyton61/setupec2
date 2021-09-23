resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway.id
  subnet_id     = aws_subnet.public_subnet["ap-northeast-1a"].id
  depends_on    = [aws_internet_gateway.igw]

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}
