terraform {
  backend "s3" {
    bucket = "terraform-sushma"
    key    = "sample.sus/terraform.tfstate"
    region = "us-east-1"
  }
}

output "demo" {
  value = "Hello World"
}