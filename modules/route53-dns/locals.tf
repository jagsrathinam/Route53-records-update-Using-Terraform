locals {
  msapp1_app_external_name = flatten([
    for cluster, value in var.clusters : [
      for i in range(value.msapp1) : {
        msapp1 = format("%s%s%s%02d", var.env_prefix, cluster, "a", i + 1)
        record = value.record
      }
    ]
  ])

  msapp2_app_external_name = flatten([
    for cluster, value in var.clusters : [
      for i in range(value.msapp2) : {
        msapp2 = format("%s%s%s%02d", var.env_prefix, cluster, "b", i + 1)
        record = value.record
      }
    ]
  ])
}
