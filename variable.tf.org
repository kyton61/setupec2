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

  aws_access_key  = "AKIAID4Q5R3JK3IOJ73Q"
  aws_sercret_key = "c/CiCqkUXSnegRrlz3XPEYMqGX7Nffid24KMI8Ml"
}
