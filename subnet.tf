resource "aws_subnet" "public_subnet" {
  for_each          = local.subnet_numbers
  vpc_id            = aws_vpc.vpc.id
  availability_zone = each.key
  cidr_block        = cidrsubnet(aws_vpc.vpc.cidr_block, 8, each.value)

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}-public"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}

resource "aws_subnet" "private_subnet" {
  for_each          = local.subnet_numbers
  vpc_id            = aws_vpc.vpc.id
  availability_zone = each.key
  cidr_block        = cidrsubnet(aws_vpc.vpc.cidr_block, 8, each.value + 3)

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}-private"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}
