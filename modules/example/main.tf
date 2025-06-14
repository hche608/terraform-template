// Example module main.tf
variable "example_name" {
  description = "An example input variable."
  type        = string
}

# trivy:ignore:AVD-AWS-0086
# tflint-ignore: terraform_required_version, terraform_required_providers
resource "null_resource" "example" {
  triggers = {
    name = var.example_name
  }
}

output "example_output" {
  description = "An example output."
  value       = null_resource.example.id
}

terraform {
  required_version = " ~> 1.8"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3"
    }
  }
}
