# Storage Account
resource "azurerm_storage_account" "main" {
  name                     = "st${substr(md5(var.resource_group_name), 0, 10)}${var.environment}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = var.environment
  }
}

# App Service Plan
resource "azurerm_service_plan" "main" {
  name                = "plan-${var.function_app_name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "Y1"
}

# Function App
resource "azurerm_linux_function_app" "main" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = var.location

  storage_account_name       = azurerm_storage_account.main.name
  storage_account_access_key = azurerm_storage_account.main.primary_access_key
  service_plan_id            = azurerm_service_plan.main.id

  site_config {
    application_stack {
      java_version = "11"
    }
  }

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME" = "java"
  }

  tags = {
    Environment = var.environment
  }
}