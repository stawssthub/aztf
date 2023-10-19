variable "name" {
  type = string
  description = "App Service  name"
}

variable "resource_group_name" {
  type = string
  description = "App Service  resource group"
}


variable "location" {
  type        = string
  description = "App Servicelocation"
}

variable "service_plan_id" {
  type = string
  description = "Id of the service plan hosting the app service"
}

variable "dotnet_version" {
  type        = string
  description = "The version o fthe .NET stack to use"
  default     = "v6.0"
}

variable "tags" {
  type        = map(string)
  description = "Paradigm tags"
  default     = {}
}