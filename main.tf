terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ca-central-1"
}

resource "aws_instance" "web-app" {
  ami           = "ami-07e17b58812e0c7c2"
  count         = 1
  instance_type = "t2.micro"
  key_name      = "eric-keypair"
}

resource "docker_image" "php-webappapp" {
  name         = "php-webappapp"
  build        = {
    context    = "${path.module}/php-webapp"
    dockerfile = "${path.module}/php-webappapp/Dockerfile"
  }
}