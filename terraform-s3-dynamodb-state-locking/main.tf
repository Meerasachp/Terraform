provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Groot" {
  instance_type = "t2.micro"
  ami = "ami-053b0d53c279acc90" # change this
  subnet_id = "subnet-019ea91ed9b5252e7" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-s3-bucket" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
