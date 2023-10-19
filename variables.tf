variable "tenant_id" {
  type = string
  default = "f92e878b-9aff-43f2-9066-4ddb71cb2299"
}

variable "subscription_id" {
  type = string
  description = "The subscription id we are deploying into"
}

variable "location" {
  type = string
  default = "eastus"
}

variable "environment" { 
  type = string

  validation {
    condition = var.environment == "dev" || var.environment == "tst"
    error_message = "Environment must be dev, tst, stg, dr, or prd."
  }
}

variable "resource_prefix" {
  type = string
  description = "Unique prefix added to every resource name"
  default = "st"
}

variable "resource_slug" {
  type = string
  description = "An optional unique slug applied to a resource name"
  nullable = true
  default = ""
}

variable "appservice_sku_name" {
  type = string
  default = "S1"
}


variable "tags" {
  type     = map(any)
  nullable = true
}
