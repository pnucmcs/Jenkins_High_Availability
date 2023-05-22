provider "aws" {
  region = "us-west-2"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-07a5c06bc58bf7f09"
  subnet_ids = ["subnet-074a7f3209dba707b", "subnet-0e6ab27fc49a818b9", "subnet-0c0edd582224eb489"]
}