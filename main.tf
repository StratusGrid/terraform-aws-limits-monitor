resource "aws_cloudformation_stack" "limit_monitor_slack" {
  name = "limit-monitor"
  tags = merge(var.input_tags, local.common_tags)
  parameters = {
    AccountList  = var.accountlist
    SNSEmail     = var.email
    SlackChannel = var.slackchannel
    SlackHookURL = var.slackhookurl
  }
  capabilities = ["CAPABILITY_IAM"]
  template_url = "https://s3.amazonaws.com/solutions-reference/limit-monitor/latest/limit-monitor.template"
}
