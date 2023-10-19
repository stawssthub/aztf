locals {
  appservice_plan_name = join("-", compact([var.resource_prefix, var.location, var.environment, var.resource_slug, "demo", "asp" ]))
  appservice_name = join("-", compact([var.resource_prefix, var.location, var.environment, var.resource_slug, var.resource_prefix, "as2"]))
  resource_group_name = "MY-RG"
}