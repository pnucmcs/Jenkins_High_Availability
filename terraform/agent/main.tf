provider "aws" {
  region = "us-west-2"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-01a92c63e5a75890c"
  instance_type      = "t2.small"
  key_name           = "prashanthpractice"
  subnet_ids         = ["subnet-074a7f3209dba707b", "subnet-0e6ab27fc49a818b9", "subnet-0c0edd582224eb489"]
  instance_count     = 1
}
