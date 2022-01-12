# template-terraform-module-starter
This Repo is meant to act as a template which can be used
when creating new modules.

NOTE! Don't forget to change the module source repo tag in -tags.tf!

This is an example of how to use this module:
```
module "template_terraform_module_starter" {
  source     = "StratusGrid/template-terraform-module-starter/aws"
  version    = "1.0.0"
  # source   = "github.com/StratusGrid/terraform-aws-template-terraform-module-starter"
  name       = "${var.name_prefix}-template-terraform-module-starter${local.name_suffix}"
  input_tags = merge(local.common_tags, {})
}
```