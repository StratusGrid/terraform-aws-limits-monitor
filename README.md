# AWS Limit Monitor
Terraform module to deploy the [AWS Limit Monitor Solution](https://github.com/aws-solutions/aws-limit-monitor) for monitoring AWS service limits. It monitors limits across services supported by Amazon Trusted Advisor; in multiple regions and multiple AWS accounts. The solution integrates with Amazon SNS and Slack to notify customers for service limits approaching thresholds.

[Documentation](https://aws.amazon.com/solutions/implementations/limit-monitor/)

## Example
```
module "aws-limits" {
  source     = "github.com/StratusGrid/terraform-aws-limits-monitor"
  email      = "team@example.com"
  input_tags = local.common_tags
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.72.0 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudformation_stack.limit-monitor](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accountlist"></a> [accountlist](#input\_accountlist) | List of comma-separated and double-quoted account numbers to monitor. If you leave this parameter blank, the solution will only monitor limits in the primary account. If you enter multiple secondary account IDs, you must also provide the primary account ID in this parameter. | `string` | `""` | no |
| <a name="input_email"></a> [email](#input\_email) | The email address to subscribe for SNS limit alert messages, leave blank if SNS alerts not needed. | `string` | `""` | no |
| <a name="input_input_tags"></a> [input\_tags](#input\_input\_tags) | Map of tags to apply to resources | `map(string)` | <pre>{<br>  "Developer": "StratusGrid",<br>  "Provisioner": "Terraform"<br>}</pre> | no |
| <a name="input_slackchannel"></a> [slackchannel](#input\_slackchannel) | SSM parameter key for the Slack channel. Leave blank if you do not wish to receive Slack notifications. | `string` | `""` | no |
| <a name="input_slackhookurl"></a> [slackhookurl](#input\_slackhookurl) | SSM parameter key for incoming Slack web hook URL. Leave blank if you do not wish to receive Slack notifications. | `string` | `""` | no |

## Outputs

No outputs.
