output "resource_group_name" {
  description = "Nom du Resource Group"
  value       = azurerm_resource_group.main.name
}

output "aks_cluster_name" {
  description = "Nom du cluster AKS"
  value       = module.aks.cluster_name
}

output "function_app_name" {
  description = "Nom de la Function App"
  value       = module.functions.function_app_name
}