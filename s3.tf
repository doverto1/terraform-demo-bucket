resource "aws_s3_bucket" "demo" {
  bucket = "aaa-asu-et-dt-sandbox-demo-bucket"

  tags = {
    Name         = "aaa-asu-et-dt-sandbox-demo-bucket"
    Environment  = "Demo"
    AdminContact = "Anakin Skywalker"
    TechContact  = "Luke Skywalker"
    CostCenter   = "1001001"
    ProgramCode  = "2112"
  }
}

data "aws_iam_account_alias" "current" {}

output "account_alias" {
  value = data.aws_iam_account_alias.current.account_alias
}
