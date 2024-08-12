resource "aws_ssm_parameter" "foo" {
  name  = "/myapp/FOO"
  type  = bool
  value = true
}

resource "aws_ssm_parameter" "bar" {
  name  = "/myapp/BAR"
  type  = bool
  value = false
}