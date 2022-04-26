variable "email" {
  description = "The email address to subscribe for SNS limit alert messages, leave blank if SNS alerts not needed."
  type        = string
  default     = ""
}

variable "accountlist" {
  description = "List of comma-separated and double-quoted account numbers to monitor. If you leave this parameter blank, the solution will only monitor limits in the primary account. If you enter multiple secondary account IDs, you must also provide the primary account ID in this parameter."
  type        = string
  default     = ""
}

variable "slackhookurl" {
  description = "SSM parameter key for incoming Slack web hook URL. Leave blank if you do not wish to receive Slack notifications."
  type        = string
  default     = ""
}

variable "slackchannel" {
  description = "SSM parameter key for the Slack channel. Leave blank if you do not wish to receive Slack notifications."
  type        = string
  default     = ""
}

variable "input_tags" {
  description = "Map of tags to apply to resources"
  type        = map(string)
  default = {
    Developer   = "StratusGrid"
    Provisioner = "Terraform"
  }
}
