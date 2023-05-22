provider "aws" {
  region = "us-west-2"
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-074a7f3209dba707b", "subnet-0e6ab27fc49a818b9", "subnet-0c0edd582224eb489"]
  ami_id        = "ami-0cd5ca0205e321ccc"
  instance_type = "t2.small"
  key_name      = "prashanthpractice"
  environment   = "dev"
  vpc_id        = "vpc-07a5c06bc58bf7f09"
}