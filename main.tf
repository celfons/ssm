resource "aws_ssm_parameter" "foo" {
  name  = "${var.parameter_store_name}/FOO"
  type  = bool
  value = true
}

resource "aws_ssm_parameter" "bar" {
  name  = "${var.parameter_store_name}/BAR"
  type  = bool
  value = false
}