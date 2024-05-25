terraform {
  backend "s3" {
    bucket         = "application-name-backend-state"
    key            = "dev/07-backend-state/project"
    region         = "us-east-1"
    dynamodb_table = "dev_application_locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_user" {
  name = "my_iam_user_abc"
}
