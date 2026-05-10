# Captura o ID da conta AWS dinamicamente para garantir nomes de bucket únicos
data "aws_caller_identity" "current" {}

# 1. Bucket S3 para os Arquivos de Estado (tfstate)
resource "aws_s3_bucket" "terraform_state" {
  bucket = "cidade-refugio-backend-terraform-state-${data.aws_caller_identity.current.account_id}"

  # Impede a deleção acidental via Terraform
  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "Terraform State Storage"
    Environment = "Management"
  }
}

# 2. Habilita Versionamento (Crucial para recuperar o estado se algo der errado)
resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# 3. Bloqueia Acesso Público (Segurança)
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.terraform_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# 4. Tabela DynamoDB para State Locking (O "Semáforo" do Terraform)
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "cidade-refugio-backend-terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Terraform State Lock Table"
    Environment = "Management"
  }
}