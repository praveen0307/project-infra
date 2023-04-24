terraform {
  backend "s3" {
    encrypt = "true"
    bucket = "terraform-remote-state-django-project"
    dynamodb_table = "project-us-east-1-table"
    key     = "networking"
  }
}
