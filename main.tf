  terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "6.9.0"
      }
    }
  }
  provider "aws" {
    # Configuration options
    region = "eu-central-1"
  }
  provider "random" {
      # configuration options for the random provider
  }
  
  resource "random_string" "demorandoemstring" {
    length = 5
    upper   = false        
    special = false
  }

  resource "aws_s3_bucket" "random_bucket" {
    bucket = "awssabaraja-${random_string.demorandoemstring.result}"
    
  }
