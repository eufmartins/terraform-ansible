terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}

provider "aws" {
  profile = "default"
  region = var.regiao-aws
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ec1bf4a8f92e7bd1"
  instance_type = var.instancia
  key_name = var.chave
  tags = {
    Name = "Terraformn Ansible python"
  }
}
resource "aws_key_pair" "chaveSSH" {
  key_name = var.chave
  public_key = file ("${var.chave}.pub")
}

output "IP_publico" {
  value = aws_instance.app_server.public_ip
  
}