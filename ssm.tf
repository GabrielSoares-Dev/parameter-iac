resource "aws_ssm_parameter" "boilerplate_laravel_app_key" {
  name        = "/${lower(var.environment)}/boilerplate-laravel-10-serverless/app-key"
  description = "boilerplate-laravel-10-serverless app key"
  type        = "SecureString"
  value       = var.boilerplate_laravel_10_serverless_app_key
  tags = {
    environment = lower(var.environment)
  }
}

resource "aws_ssm_parameter" "boilerplate_laravel_jwt_secret" {
  name        = "/${lower(var.environment)}/boilerplate-laravel-10-serverless/jwt-secret"
  description = "boilerplate-laravel-10-serverless jwt secret"
  type        = "SecureString"
  value       = var.boilerplate_laravel_10_serverless_jwt_secret
  tags = {
    environment = lower(var.environment)
  }
}