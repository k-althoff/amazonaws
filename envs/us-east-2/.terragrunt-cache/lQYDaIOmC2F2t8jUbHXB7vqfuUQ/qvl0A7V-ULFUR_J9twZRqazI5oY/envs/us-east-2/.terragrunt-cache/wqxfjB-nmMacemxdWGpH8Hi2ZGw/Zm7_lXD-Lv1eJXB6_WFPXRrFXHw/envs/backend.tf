# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    key            = "./terraform.tfstate"
    region         = "us-east-2"
    bucket         = "kirksbucket"
    dynamodb_table = "my-lock-table"
    encrypt        = true
  }
}
