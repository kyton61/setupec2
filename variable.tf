data "aws_region" "current" {}
variable "local_global_ip" {}
locals {
  project_name = "th"
  region       = data.aws_region.current.name

  vpc_cidr = {
    stg = "10.0.0.0/16"
    prd = "10.1.0.0/16"
  }

  subnet_numbers = {
    "ap-northeast-1a" = 0
    "ap-northeast-1d" = 1
    "ap-northeast-1c" = 2
  }

  aws_access_key  = "AKIAUOBDVBG6AIERC2CQ"
  aws_sercret_key = "F4/PKZ/mLzfjR4xy2JAGpnREpu5mlQXCUt3HeKhR"
}
