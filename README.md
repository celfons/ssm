# Provisionamento de Variáveis de Ambiente no AWS Parameter Store com CI GitHub Actions

Este repositório contém um exemplo de como provisionar variáveis de ambiente no AWS Parameter Store usando Terraform e uma esteira de integração contínua (CI) configurada com GitHub Actions. O objetivo é automatizar a configuração e atualização de variáveis de ambiente no AWS Parameter Store, garantindo uma gestão centralizada e segura das variáveis de configuração para suas aplicações.

## Estrutura do Repositório

- `./github/` - Contém a configuração do GitHub Actions para automação do processo de provisionamento.


## Configuração do GitHub Actions

O pipeline de CI do GitHub Actions está configurado para executar o provisionamento das variáveis de ambiente no AWS Parameter Store usando Terraform. Para que o pipeline funcione corretamente, você precisará definir os seguintes segredos no seu repositório GitHub:

1. `AWS_ACCESS_KEY` - Sua chave de acesso da AWS.
2. `AWS_SECRET_KEY` - Sua chave secreta da AWS.
3. `AWS_REGION` - A região da AWS onde o Parameter Store está localizado.

Para configurar esses segredos no GitHub, siga estas etapas:

1. Vá para a página do seu repositório no GitHub.
2. Navegue até "Settings" (Configurações).
3. Selecione "Secrets and variables" e clique em "Actions".
4. Adicione novos segredos com os nomes e valores apropriados.

## Configuração do Terraform

O Terraform é utilizado para gerenciar os parâmetros no AWS Parameter Store. Os arquivos de configuração do Terraform estão localizados na pasta raiz.

### Adicionar uma Nova Variável

Para adicionar uma nova variável, você deve editar o arquivo `main.tf` na pasta raiz. Adicione um novo recurso `aws_ssm_parameter` com os detalhes da sua variável. Exemplo:

```hcl
resource "aws_ssm_parameter" "foo" {
  name  = "${var.parameter_store_name}/FOO"
  type  = "String" # Ou "SecureString" se a variável for sensível
  value = "true" # Ou outro valor apropriado
}