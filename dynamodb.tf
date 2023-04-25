resource "aws_dynamodb_table" "demo-table" {
  name           = "counter-app"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "countID"

  attribute {
    name = "No-of-Request"
    type = "S"
  }

  attribute {
    name = "Count"
    type = "N"
  }


  tags = {
    Name        = "counter-app"
  }
}