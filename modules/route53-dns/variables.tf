variable "zone_id" {
  type        = string
  description = "Target Route 53 Hosted Zone ID for record creation."
}

variable "env_prefix" {
  type        = string
  description = "Prefix prepended to dynamic application record names (e.g., prod, stage, dev)."
  default     = "prod"
}

variable "ttl" {
  type        = number
  description = "Default TTL for created DNS records."
  default     = 300
}

variable "clusters" {
  type = map(object({
    msapp1 = number
    msapp2 = number
    record = string
  }))
  description = "Map of cluster definitions for dynamic app endpoint creation."
  default     = {}
}

variable "a_records" {
  type        = map(list(string))
  description = "Static A records mapping hostname to IP address lists."
  default     = {}
}

variable "cname_records" {
  type        = map(list(string))
  description = "Static CNAME records mapping hostname to target list."
  default     = {}
}

variable "txt_records" {
  type        = map(list(string))
  description = "Static TXT records."
  default     = {}
}

variable "mx_records" {
  type        = map(list(string))
  description = "Static MX records."
  default     = {}
}

variable "srv_records" {
  type        = map(list(string))
  description = "Static SRV records."
  default     = {}
}

variable "alias_records" {
  type = map(object({
    type    = string
    record  = string
    zone_id = string
  }))
  description = "Alias records targeting AWS infrastructure endpoints."
  default     = {}
}
