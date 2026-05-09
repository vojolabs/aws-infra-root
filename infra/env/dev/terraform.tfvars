# NÃO REMOVER OU SUBSTITUIR ESSAS VARIÁVEIS
# Elas são essenciais para o deploy e precisam existir neste arquivo.

environment  = "dev"
project_name = "cidade-refugio"
aws_region   = "sa-east-1"

###########################################################################################
# GITHUB OIDC CONFIGURATION
###########################################################################################

github_repository = "vojolabs/projeto-cdr-backend"

###########################################################################################
# DATABASE CREDENTIALS
# IMPORTANTE: Estes valores devem ser substituídos com valores seguros
# Considere usar AWS Secrets Manager ou variáveis de ambiente
###########################################################################################

database_credentials = {
  username = "admin"
  password = "CHANGE_ME_SECURE_PASSWORD"  # Substituir com senha segura
}

# Criar secrets no Secrets Manager
create_secrets_manager = true

###########################################################################################