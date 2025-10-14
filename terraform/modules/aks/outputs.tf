output "cluster_id" {
  description = "ID du cluster AKS"
  value       = azurerm_kubernetes_cluster.main.id
}

output "cluster_name" {
  description = "Nom du cluster AKS"
  value       = azurerm_kubernetes_cluster.main.name
}

output "kube_config" {
  description = "Kubeconfig"
  value       = azurerm_kubernetes_cluster.main.kube_config_raw
  sensitive   = true
}