terraform {
  backend "remote" {}
}

module "ec2_instance" {
  source  = "app.terraform.io/jake-lundberg/ec2-instance/aws"
  version = "1.0.0"

  ami_id        = "${var.ami_id}"
  aws_region    = "${var.aws_region}"
  instance_type = "${var.instance_type}"
  name          = "${var.name}-${terraform.workspace}"
  owner         = "${var.owner}"
  ttl           = "${var.ttl}"
}

