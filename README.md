# Terraform + Ansible API Deploy

Projeto de estudo para provisionar servidores EC2 com Terraform e configurá-los automaticamente com Ansible, clonando e preparando uma aplicação Ruby on Rails pronta para uso.

## Sobre

Desenvolvido por **Felipe Martins** — estudante DevOps apaixonado por tecnologia e automação de infraestrutura.

LinkedIn: [Felipe Martins](https://linkedin.com/in/eufmartins)

## Como rodar o projeto

1. Clone o repositório:

```
git clone https://github.com/eufmartins/terraform-ansible.git
cd terraform-ansible/Aula02
```

2. Inicie o ambiente com Terraform:

terraform init
terraform apply

3. Configure a instância com Ansible (após o provisionamento):

ansible-playbook env/Dev/playbook.yml -i infra/hosts.yml -u ubuntu --private-key ~/.ssh/IaC-Dev

4. Acesse a API clonada:

http:// < IP-da-instancia > :8000



> A aplicação clonada é baseada no repositório:  
> [clientes-leo-api](https://github.com/guilhermeonrails/clientes-leo-api.git)



## Tecnologias usadas

- Terraform
- Ansible
- AWS EC2

## O que aprendi aqui

- Provisionar infraestrutura na AWS com Terraform
- Utilizar Ansible para automatizar configuração de servidores
- Clonar e preparar aplicações automaticamente
- Trabalhar com infraestrutura como código (IaC) e DevOps na prática
