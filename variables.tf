variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

variable "db_host" {
  description = "The database host"
  type        = string
  default     = "mydb.amazonaws.com"
}

variable "db_user" {
  description = "The database user"
  type        = string
  default     = "admin"
}

variable "db_pass" {
  description = "The database password"
  type        = string
  default     = "password"
}