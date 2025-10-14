variable "project_name" {
  description = "Nom du projet"
  type        = string
  default     = "infoline"
}

variable "location" {
  description = "Région Azure"
  type        = string
  default     = "francecentral"
}

variable "environment" {
  description = "Environnement (dev, prod)"
  type        = string
  default     = "dev"
}

variable "kubernetes_version" {
  description = "Version de Kubernetes"
  type        = string
  default     = "1.31.11"
}

variable "node_count" {
  description = "Nombre de nodes AKS"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Taille des VMs AKS"
  type        = string
  default     = "Standard_B2s"
}