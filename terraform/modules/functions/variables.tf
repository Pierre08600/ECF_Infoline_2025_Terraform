variable "resource_group_name" {
  description = "Nom du Resource Group"
  type        = string
}

variable "location" {
  description = "Région Azure"
  type        = string
}

variable "function_app_name" {
  description = "Nom de la Function App"
  type        = string
}

variable "environment" {
  description = "Environnement"
  type        = string
}