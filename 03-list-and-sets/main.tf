variable "names" {
    default = ["ravs", "sats", "ranga", "tom", "jane"]
}

provider "aws" {
    region = "us-east-1"
    version = "~> 2.46"
}

resource "aws_iam_user" "my_iam_users" {
    for_each = toset(var.names)
    name = each.value
}
