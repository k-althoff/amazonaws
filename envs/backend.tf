# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "kirksbucket"
    dynamodb_table = "my-lock-table"
    encrypt        = true
    key            = "./terraform.tfstate"
    region         = "us-east-2"
  }
}
