terraform {
  required_version = ">= 1.2.0, <= 1.4.5"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
