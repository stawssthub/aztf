resource "azurerm_windows_web_app" "demo_webapp" {
  name = var.name
  resource_group_name = var.resource_group_name
  location = var.location
  service_plan_id = var.service_plan_id

https_only = false

site_config {
    vnet_route_all_enabled = false
    #use_32_bit_worker = false
    always_on = false

    application_stack {
        current_stack = "dotnet"
        dotnet_version = var.dotnet_version
    }

}

app_settings = {
    "ASPNETCORE_DETAILEDERRORS" = "true"
}
tags= merge(var.tags,
{
  "myproject:resource" = var.name  
})
}