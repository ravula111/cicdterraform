provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

terraform {
  backend "s3" {
    encrypt        = false
    bucket         = "tf-bucket-s3-v1234"
    dynamodb_table = "tf-state-lock-dynamo"
    key            = "path/path/terraform-tfstate"
    region         = "us-east-1"
  }
}
resource "aws_iam_user" "my_iam_user" {
  name = "ramana_1"
}
