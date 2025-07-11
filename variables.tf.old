variable "aws_region" {
  description = "The AWS region where resources will be deployed."
  type        = string
  default     = "ap-northeast-1"
}

variable "project_name_prefix" {
  description = "A prefix for naming resources to ensure uniqueness."
  type        = string
  default     = "ecr-acr-cache"
}

variable "acr_login_server" {
  description = "The FQDN of your Azure Container Registry (e.g., myuniqueacr.azurecr.io)."
  type        = string
  # no default value, need add from .tfvars
}

variable "ecr_cache_prefix" {
  description = "The repository prefix that triggers the pull-through cache rule (e.g., 'azure')."
  type        = string
  default     = "azure"
}
