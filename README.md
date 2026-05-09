# 🚀 VojoLabs | Automação de Infraestrutura AWS

Bem-vindo ao gerador oficial de repositórios de infraestrutura da **VojoLabs**! Este template foi criado para padronizar o provisionamento de recursos AWS, garantindo que todo novo projeto nasça com a estrutura correta e as melhores práticas de DevOps.

---

## 🛠️ Como Gerar um Novo Repositório

Para evitar configurações manuais e erros de padronização, utilizamos um fluxo automatizado via **GitHub Issues**. Siga os passos abaixo:

### 1. Inicie o Processo

❌ Não utilize o botão verde "Use this template". Em vez disso:

* Vá na aba [**Issues**](https://github.com/VojoLabs/template-infra-aws/issues).
* Clique no botão **New Issue**.
* Localize o formulário **"🚀 Novo Projeto de Infraestrutura AWS"** e clique em **Get Started**.

### 2. Preencha o Formulário

O formulário solicitará as informações essenciais para o novo projeto:

* **Nome do Repositório:** Use apenas letras minúsculas e hífens.
  * *substitua* `<nome-do-projeto>-<servico-provisionado>`
  * *Exemplo:* `projeto-vojolabs-aws-lambda-s3`
* **Padrão de Nomenclatura:** Tente sempre iniciar com o nome do cliente ou projeto interno seguido da tecnologia principal.

❌ Não substitua o nome da action por completo, ela precisa **obrigatóriamente** iniciar com *'Template'*
O formulário virá desse assim: *"Template para Infraestrutura AWS - [Novo Projeto]"*
**Configure (opcional) somente o texto entre colchetes []**

* *Exemplo:* `Template para Infraestrutura AWS - Projeto VojoLabs`

### 3. Acompanhamento e Entrega

Após clicar em **Submit new issue**:

1. ⏳ **O Bot entrará em ação:** Um comentário será feito automaticamente confirmando o recebimento.
2. ⚙️ **Provisionamento:** O GitHub Actions criará o repositório dentro da organização **VojoLabs**, configurará as branches `main` e `develop`
*Lembre-se de realizar o desenvolvimento a partir da branch develop com uma feature/branch*
3. ✅ **Conclusão:** A issue será fechada e você receberá o link direto para o seu novo repositório, pronto para uso.

---

## 🤝 Boas Práticas e Comportamento

Para manter nosso ecossistema saudável e profissional, pedimos atenção aos seguintes pontos:

* **Nomenclatura Limpa:** Nomes de repositórios claros ajudam na manutenção e no faturamento da nuvem. Evite nomes genéricos como `teste-aws`.
* **Segurança Primeiro:** Este template é público. Nunca insira credenciais, chaves IAM ou segredos diretamente no formulário da issue. Use o **AWS Secrets Manager** ou **GitHub Secrets** no repositório final.
* **Mentalidade de Mentoria:** Se você está criando este repositório para um novo membro da VojoLabs, utilize o link gerado para guiá-lo no primeiro `git pull`.
* **Erros na Automação:** Caso o bot retorne um erro (ex: nome de repositório já existente), leia atentamente o log e tente novamente com os ajustes necessários.

---

## 🏗️ Estrutura Entregue

O novo repositório será gerado com

* ✅ Estrutura de pastas padronizada para Terraform.
* ✅ Branch `main` (produção) e `develop` (desenvolvimento).
* ✅ README técnico.

---

> **Dúvidas?** > Entre em contato com o time de **Cloud Infrastructure** ou abra uma discussão na nossa comunidade.
> **VojoLabs - Da jornada ao destino.**
