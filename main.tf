# Email Only
resource "aws_cloudformation_stack" "limit_monitor_email" {
  count = var.enable_slack == false ? 1 : 0

  name = "limit-monitor"
  tags = local.common_tags
  parameters = {
    AccountList = var.accountlist
    SNSEmail    = var.email
  }
  capabilities = ["CAPABILITY_IAM"]
  template_url = "https://s3.amazonaws.com/solutions-reference/limit-monitor/latest/limit-monitor.template"
}

# Slack Only
resource "aws_cloudformation_stack" "limit_monitor_slack" {
  count = var.enable_slack == true ? 1 : 0

  name = "limit-monitor"
  tags = local.common_tags
  parameters = {
    AccountList  = var.accountlist
    SlackChannel = var.slackchannel
    SlackHookURL = var.slackhookurl
  }
  capabilities = ["CAPABILITY_IAM"]
  template_url = "https://s3.amazonaws.com/solutions-reference/limit-monitor/latest/limit-monitor.template"
}
