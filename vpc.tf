resource "aws_vpc" "vpc" {
  cidr_block = local.vpc_cidr[terraform.workspace]

  tags = {
    Name    = "${terraform.workspace}-${local.project_name}"
    Env     = "${terraform.workspace}"
    Project = local.project_name
  }
}
