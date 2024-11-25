module "maxcompute_project" {
  source = "../.."

  #project
  name          = "my_mc_project"
  default_quota = "默认后付费Quota"
  comment       = "my_mc_project"
  product_type  = "PayAsYouGo"
}
