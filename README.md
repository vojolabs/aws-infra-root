# 🚀 Template de Infraestrutura Vojolabs

Este repositório contém um template para infraestrutura como código (IaC) utilizando Terraform para provisionar recursos na AWS. O template é estruturado para suportar múltiplos ambientes (desenvolvimento e produção) e pode ser facilmente customizado para diferentes projetos. 🌟

## 📁 Estrutura do Projeto

```text
template-infra-vojolabs/
├── README.md                 # Este arquivo 📖
├── infra/
│   ├── main.tf               # Arquivo principal do Terraform (a ser preenchido) ⚙️
│   ├── outputs.tf            # Saídas do Terraform (a ser preenchido) 📤
│   ├── provider.tf           # Configuração do provedor AWS ☁️
│   ├── variables.tf          # Definição de variáveis 🔧
│   └── env/
│       ├── dev/
│       │   └── terraform.tfvars  # Variáveis para ambiente de desenvolvimento 🧪
│       └── prod/
│           └── terraform.tfvars  # Variáveis para ambiente de produção 🚀
```

## ✅ Pré-requisitos

Antes de usar este template, certifique-se de ter instalado:

- [Terraform](https://www.terraform.io/downloads.html) (versão 1.0 ou superior) 🛠️
- [AWS CLI](https://aws.amazon.com/cli/) configurado com credenciais válidas 🔑
- Acesso à conta AWS com permissões para provisionar recursos 🔒

## 🛠️ Como Usar o Template

### 1. ⚡ Configuração Inicial

1. Inicie seu desenvolvimento sempre com um branch 'feature' 🌿

  ```bash
   git branch -m feature/<seu branch>
   ```

   O Actions do github executará automaticamente após seu push a partir desta branch. 🤖

### 2. 🔧 Configuração das Variáveis

As variáveis essenciais estão definidas em `variables.tf` e devem ser configuradas nos arquivos `terraform.tfvars` de cada ambiente.

#### Variáveis Essenciais

- `environment`: Nome do ambiente (ex: "dev", "prod") 🌍
- `project_name`: Nome do projeto (ex: "my-app") 📝
- `aws_region`: Região da AWS (ex: "sa-east-1") 🌎

#### Configuração para Desenvolvimento: 🧪

Edite o arquivo `env/dev/terraform.tfvars`:

```terraform
environment = "dev"
project_name = "nome-do-seu-projeto"
aws_region = "sa-east-1"
```

#### Configuração para Produção: 🚀

Edite o arquivo `env/prod/terraform.tfvars`:

```terraform
environment = "prod"
project_name = "nome-do-seu-projeto"
aws_region = "sa-east-1"
```

### 3. 🏗️ Desenvolvimento da Infraestrutura

1. **Edite `main.tf`**: Adicione os recursos da AWS que deseja provisionar. Por exemplo: ⚙️

   ```terraform
   resource "aws_s3_bucket" "example" {
     bucket = "${var.project_name}-${var.environment}-bucket"

     tags = {
       Environment = var.environment
       Project     = var.project_name
     }
   }
   ```

2. **Edite `outputs.tf`**: Defina as saídas que serão exibidas após o deploy. Por exemplo: 📤

   ```terraform
   output "bucket_name" {
     description = "Nome do bucket S3 criado"
     value       = aws_s3_bucket.example.bucket
   }
   ```

## 🆘 Suporte

Para dúvidas ou problemas, consulte a documentação oficial do Terraform ou entre em contato com a equipe Vojolabs. 💬'
