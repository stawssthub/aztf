resource "azurerm_service_plan" "App_plan" {
  name                = var.name
  resource_group_name= var.resource_group_name
  location = var.location
  
  zone_balancing_enabled = var.zone_balancing_enabled
  os_type = var.os_type
  sku_name   = var.sku_name
 tags = var.tags
}