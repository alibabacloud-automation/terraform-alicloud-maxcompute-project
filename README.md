Terraform module for creating MaxCompute project on Alibaba Cloud.  
terraform-alicloud-maxcompute-project
--------------------

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-maxcompute-project/blob/master/README-CN.md)

Terraform module which creates MaxCompute resources on Alibaba Cloud. 

These types of resources are supported:

* [MaxCompute Project](https://www.terraform.io/docs/providers/alicloud/r/maxcompute_project.html)

## Terraform versions

This module requires Terraform 0.12 and Terraform Provider AliCloud 1.75.0+.

## Usage

```hcl
module "maxcompute"  {
  source   = "terraform-alicloud-modules/maxcompute/alicloud"
  region   = "cn-beijing"                
  
  #project
  description             = "Hello MaxCompute"
  project_name            = "example"
  specification_type      = "OdpsStandard"
  order_type              = "PayAsYouGo"

}
```

## Examples

* [complete](https://github.com/terraform-alicloud-modules/terraform-alicloud-maxcompute-project/tree/master/examples/complete)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
