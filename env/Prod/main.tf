module "aws-prod" {
  source = "../../infra"
  regiao-aws = "us-west-2"
  chave = "IaC-PROD"
  instancia = "t2.micro"
}

output "IP" {
  value = module.aws-prod.IP_publico
}