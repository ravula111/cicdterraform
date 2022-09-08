provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA2CWFMGPYFW2XIJGA"
  secret_key = "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"
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
  name = "anand"
}
