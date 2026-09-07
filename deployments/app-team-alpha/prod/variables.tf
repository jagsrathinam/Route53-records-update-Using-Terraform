variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "target_role_arn" {
  type        = string
  description = "Cross-account IAM Role ARN to assume (if target Hosted Zone is in another account)."
  default     = ""
}

variable "zone_id" {
  type        = string
  description = "Hosted Zone ID owned by Team Alpha."
}

variable "env_prefix" {
  type    = string
  default = "prod"
}

variable "clusters" {
  type    = map(any)
  default = {}
}

variable "cname_records" {
  type    = map(list(string))
  default = {}
}

variable "a_records" {
  type    = map(list(string))
  default = {}
}

variable "txt_records" {
  type    = map(list(string))
  default = {}
}

variable "mx_records" {
  type    = map(list(string))
  default = {}
}

variable "srv_records" {
  type    = map(list(string))
  default = {}
}

variable "alias_records" {
  type    = map(any)
  default = {}
}
