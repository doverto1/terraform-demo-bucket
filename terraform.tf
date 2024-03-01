#terraform relies on plugins 
#called "providers" to interact with remote systems.
terraform {
  #Using the AWS provider
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

}

#set the region within the provider
provider "aws" {
  region = "us-west-2"
}
