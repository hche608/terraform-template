# tflint-ignore: terraform_required_version, terraform_required_providers
module "example" {
  source       = "../../modules/example"
  example_name = "prod-example"
}
