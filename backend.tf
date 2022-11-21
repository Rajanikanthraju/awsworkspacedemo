terraform {
  backend "s3" {
    bucket = "s3backenddemo"
    key = "s3backenddemo.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "s3backenddemo"    
  }
}