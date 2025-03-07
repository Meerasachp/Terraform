terraform {
  backend "s3" {
    bucket         = "my-s3-bucket"
    key            = "my/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
