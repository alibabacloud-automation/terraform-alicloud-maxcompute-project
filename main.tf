provider "alicloud" {
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/maxcompute"
}

resource "alicloud_maxcompute_project" "this" {
  name               = var.name
  specification_type = var.specification_type
  order_type         = var.order_type
}
