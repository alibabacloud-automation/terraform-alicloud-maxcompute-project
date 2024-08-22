# maxcompute project
output "this_maxcompute_project_id" {
  description = "The ID of the project."
  value       = alicloud_maxcompute_project.this.id
}

output "this_maxcompute_project_name" {
  description = "The name of the project."
  value       = alicloud_maxcompute_project.this.project_name
}

output "this_maxcompute_project_order_type" {
  description = "The order_type of the project."
  value       = alicloud_maxcompute_project.this.product_type
}
