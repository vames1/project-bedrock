terraform {
  backend "s3" {
    bucket         = "project-bedrock-state-725115072836"
    key            = "project-bedrock/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "project-bedrock-state-lock"
    encrypt        = true
  }
}
