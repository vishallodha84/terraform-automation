module "networks" {
  source = "git::https://git.tmaws.io/AWS/terraform-module-networks.git"
}

module "naming" {
  source = "git::https://git.tmaws.io/AWS/terraform-module-naming.git"

  product_code_tag   = "${var.product_code_tag}"
  environment_tag    = "${var.environment_tag}"
  inventory_code_tag = "${var.inventory_code_tag}"
  product_name       = "${var.product_name}"
  aws_region         = "${var.aws_region}"
}

module "ami" {
  source = "git::https://git.tmaws.io/AWS/terraform-module-ami.git"
  region  = "${var.aws_region}"
  os      = "coreos"
  version = "latest"
}
