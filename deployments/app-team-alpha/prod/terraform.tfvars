aws_region      = "us-west-2"
target_role_arn = "arn:aws:iam::123456789012:role/TeamAlphaDNSDeploymentRole"

# Team Alpha Hosted Zone
zone_id    = "Z0123456789ABCDEF"
env_prefix = "prod"

clusters = {
  "c90" = {
    msapp1 = 4
    msapp2 = 1
    record = "prod-team-alpha-nlb-1234.elb.us-west-2.amazonaws.com"
  }
}

cname_records = {
  "login" = ["prod-team-alpha-nlb-1234.elb.us-west-2.amazonaws.com"]
  "api"   = ["prod-team-alpha-nlb-1234.elb.us-west-2.amazonaws.com"]
}
