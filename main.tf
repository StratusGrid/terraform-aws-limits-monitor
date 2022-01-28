resource "aws_cloudformation_stack" "limit-monitor" {
  name = "limit-monitor"
  tags = local.common_tags
  parameters = {
    AccountList  = var.accountlist
    SNSEmail     = var.email
    SlackChannel = var.slackchannel
    SlackHookURL = var.slackhookurl
  }
  capabilities = ["CAPABILITY_IAM"]
  template_url = "https://s3.amazonaws.com/solutions-reference/limit-monitor/latest/limit-monitor.template"
}
