resource "aws_ssm_parameter" "db_host" {
  name  = "/myapp/DB_HOST"
  type  = "String"
  value = var.db_host
}

resource "aws_ssm_parameter" "db_user" {
  name  = "/myapp/DB_USER"
  type  = "String"
  value = var.db_user
}

resource "aws_ssm_parameter" "db_pass" {
  name  = "/myapp/DB_PASS"
  type  = "SecureString"
  value = var.db_pass
}