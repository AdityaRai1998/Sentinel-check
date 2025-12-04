provider "null" {}

variable "tags" {
  type = map(string)
  default = {
    "Environment" = "dev"
    "Owner"       = "example"
    "Project"     = "playground"
  }
}

resource "null_resource" "dummy_with_tags" {
  # Provisioner is not required, just showing usage of tags
  triggers = var.tags
}

output "applied_tags" {
  value = null_resource.dummy_with_tags.triggers
}