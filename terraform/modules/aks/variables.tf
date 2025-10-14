variable "resource_group_name" {
  description = "Nom du Resource Group"
  type        = string
}

variable "location" {
  description = "Région Azure"
  type        = string
}

variable "cluster_name" {
  description = "Nom du cluster AKS"
  type        = string
}

variable "kubernetes_version" {
  description = "Version Kubernetes"
  type        = string
}

variable "node_count" {
  description = "Nombre de nodes"
  type        = number
}

variable "vm_size" {
  description = "Taille des VMs"
  type        = string
}

variable "environment" {
  description = "Environnement"
  type        = string
}