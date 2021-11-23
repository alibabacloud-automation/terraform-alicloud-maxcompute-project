resource "alicloud_maxcompute_project" "this" {
  name               = var.name
  specification_type = var.specification_type
  order_type         = var.order_type
}
