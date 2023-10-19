# Tenant
data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "k8_rg" {
  name = local.resource_group_name

}


module "app_service_plan" {
  source = "./modules/AppServiceplan"
  name = local.appservice_plan_name
  resource_group_name = data.azurerm_resource_group.k8_rg.name
  location =  var.location
  os_type = "Windows"
  sku_name = "F1"
  tags = var.tags
} 

module "demo_webapp" {
  source = "./modules/windowsAppServices/demoappservice"
  name =  local.appservice_name
  resource_group_name = data.azurerm_resource_group.k8_rg.name
  location = var.location
  service_plan_id = module.app_service_plan.app_service_planId
  tags = var.tags
} 