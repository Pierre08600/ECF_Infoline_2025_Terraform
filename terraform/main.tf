# Resource Group
resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project_name}-${var.environment}"
  location = var.location

  tags = {
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = "Terraform"
  }
}

# Module AKS
module "aks" {
  source = "./modules/aks"

  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  cluster_name        = "aks-${var.project_name}-${var.environment}"
  kubernetes_version  = var.kubernetes_version
  node_count          = var.node_count
  vm_size             = var.vm_size
  environment         = var.environment
}

# Module Azure Functions
module "functions" {
  source = "./modules/functions"

  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  function_app_name   = "func-${var.project_name}-${var.environment}-login"
  environment         = var.environment
}