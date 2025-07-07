module "aws-dev" {
  source = "../../infra"
  regiao-aws = "us-west-2"
  chave = "IaC-DEV"
  instancia = "t2.micro"
}

output "IP" {
  value = module.aws-dev.IP_publico
}