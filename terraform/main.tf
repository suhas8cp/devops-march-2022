# Terraform count

resource "null_resource" "count_sample" {
    count = 2
}

output "count_out" {
    value = null_resource.count_sample
}

locals {
    names = ["bucket1","bukcet2","bukcet3","bukcet4","bukcet5"]
}

resource "null_resource" "count_list_resource" {
    count = length(local.names)
    triggers = {
      "name" = local.names[count.index]
    }
}

output "count_list" {
    value = null_resource.count_list_resource
}

# Terraform for_each 

locals {
    names = ["bucket1","bukcet2","bukcet3","bukcet4","bukcet5"]
}

resource "null_resource" "count_list_resource" {
    for_each = toset(local.names)
    triggers = {
      "name" = each.value
    }
}

output "count_list" {
    value = null_resource.count_list_resource
}
