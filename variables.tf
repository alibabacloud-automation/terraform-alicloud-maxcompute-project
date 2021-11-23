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
  description = "The type of resource Specification, only `OdpsStandard` supported currently."
  type        = string
  default     = "OdpsStandard"
}

variable "order_type" {
  description = "The type of payment, only `PayAsYouGo` supported currently."
  type        = string
  default     = "PayAsYouGo"
}
