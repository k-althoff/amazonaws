// Every¸Terraform module that is used with Terragrunt, needs this empty backend definition.
// The backend will be automatically configured by Terragerunt

// this var is defined in your envs/<env>/<region> directory
// To make it usable in your module you need to define an input variable

terraform {
  backend "s3" {}
}

provider "aws" {
  region = var.aws_region
}


