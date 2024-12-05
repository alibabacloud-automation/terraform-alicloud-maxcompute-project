resource "alicloud_maxcompute_project" "this" {
  project_name  = var.name
  product_type  = var.product_type
  comment       = var.comment
  default_quota = var.default_quota
  is_logical    = var.is_logical
  dynamic "ip_white_list" {
    for_each = var.ip_white_list
    content {
      ip_list     = var.ip_white_list.value["ip_list"]
      vpc_ip_list = var.ip_white_list.value["vpc_ip_list"]
    }
  }
}