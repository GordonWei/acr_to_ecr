provider "aws" {
  region = var.aws_region
}

# Create ECR Pull Through Cache Rule
resource "aws_ecr_pull_through_cache_rule" "acr_cache_rule" {
  ecr_repository_prefix = var.ecr_cache_prefix
  upstream_registry_url = var.acr_login_server
  credential_arn = aws_secretsmanager_secret.acr_credentials.arn
}

output "ecr_pull_through_cache_rule_prefix" {
  description = "The prefix for the ECR pull through cache rule."
  value       = aws_ecr_pull_through_cache_rule.acr_cache_rule.ecr_repository_prefix
}

output "upstream_registry_url" {
  description = "The upstream registry URL."
  value       = aws_ecr_pull_through_cache_rule.acr_cache_rule.upstream_registry_url
}

output "secrets_manager_arn_for_acr_credentials" {
  description = "The ARN of the secret that you need to populate with ACR credentials."
  value       = aws_secretsmanager_secret.acr_credentials.arn
}
