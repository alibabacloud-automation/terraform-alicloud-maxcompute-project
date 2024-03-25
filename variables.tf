variable "region" {
  description = "(Deprecated from version 1.1.0) The region used to launch this module resources."
  type        = string
  default     = ""
}

variable "profile" {
  description = "(Deprecated from version 1.1.0) The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}
variable "shared_credentials_file" {
  description = "(Deprecated from version 1.1.0) This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "(Deprecated from version 1.1.0) Skip staticvalidation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

#maxcompute project 
variable "name" {
  description = "The maxcompute project name."
  type        = string
  default     = "From_Terraform"
}

variable "specification_type" {
  description = "(Deprecated from version 1.2.0) The type of resource Specification, only `OdpsStandard` supported currently."
  type        = string
  default     = "OdpsStandard"
}

variable "order_type" {
  description = "(Deprecated from version 1.2.0) The type of payment, only `PayAsYouGo` supported currently."
  type        = string
  default     = "PayAsYouGo"
}

variable "product_type" {
  description = "Quota payment type. Supported values: `PayAsYouGo`, `Subscription` and `Dev`."
  type        = string
  default     = null
}

variable "comment" {
  description = "Comments of project"
  type        = string
  default     = null
}

variable "default_quota" {
  description = "Default Computing Resource Group"
  type        = string
  default     = null
}

variable "ip_white_list" {
  description = "IP whitelist. ip_list: Classic network IP white list. vpc_ip_list: VPC network whitelist."
  type = list(object({
    ip_list     = string
    vpc_ip_list = string
  }))
  default = []
}