output "function_app_id" {
  description = "ID de la Function App"
  value       = azurerm_linux_function_app.main.id
}

output "function_app_name" {
  description = "Nom de la Function App"
  value       = azurerm_linux_function_app.main.name
}