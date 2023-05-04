resource "aws_dynamodb_table" "demo-table" {
  name           = "counter-app"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "countID"


  attribute {
    name = "CountID"
    type = "S"
  }

  attribute {
    name = "No-of-Request"
    type = "N"
  }


  global_secondary_index {
    name               = "no-of-request-index"
    hash_key           = "No-of-Request"
    projection_type    = "ALL"
    read_capacity      = 5
    write_capacity     = 5
  }

  tags = {
    Name        = "counter-app"
  }
}