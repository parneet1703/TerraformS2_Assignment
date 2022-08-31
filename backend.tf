terraform {
  backend "s3" {
    bucket = "parneet-bucket"
    key    = "fresh.tfstate"
    region = "us-east-1"
    dynamodb_table = "parneet-dytable"
  }
}