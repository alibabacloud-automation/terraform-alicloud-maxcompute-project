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
  name          = "my_mc_project"
  default_quota = "默认后付费Quota"
  comment       = "my_mc_project"
  product_type  = "PayAsYouGo"
}
