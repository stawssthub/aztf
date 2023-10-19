variable "name" {
  type        = string
  description = "App Service plan name"
}

variable "resource_group_name" {
  type = string
  description = "App service Resource group name"
}

variable "location" {
  type = string
  description = "app service location"
}

variable "per_site_scale_enabled" {
  type = bool
  default = false
  description = "Should per site scaling be enabled"
}

variable "zone_balancing_enabled" {
  type = bool
  default = false
  description = "Should zone balancing to be enabled"
}

variable "os_type" {
  type = string
  description = "app service plan OS type"
}

variable "sku_name" {
  type = string
  description = "app service sku name select based on requirement"
}

variable "tags" {
  type = map(string)
  description = "my tags"
  default = {}
}