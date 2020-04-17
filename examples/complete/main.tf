variable "profile" {
  default = "default"
}
variable "region" {
  default = "cn-hangzhou"
}


provider "alicloud" {
  region  = var.region
  profile = var.profile
}


module "maxcompute_project" {
  source  = "../.."
  region  = var.region
  profile = var.profile

  #project
  name               = "my_mc_project"
  specification_type = "OdpsStandard"
  order_type         = "PayAsYouGo"
}
