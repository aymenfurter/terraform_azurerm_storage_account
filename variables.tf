variable "storage_account_name" {
  description = "Specifies the name of the storage account."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Storage Account."
  type        = string
}

variable "account_replication_type" {
  description = "Specifies the type of replication to use for this storage account."
  type        = string
  default    = "LRS"
}

variable "account_tier" {
  description = "Storage Account Tier"
  type        = string
  default     = "Standard"
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  type        = string
  default     = "switzerlandnorth"
}

variable "create_resource_group" {
  description = "Controls if a new resource group should be created."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to add to all created resources"
  type        = map(string)
  default     = {}
}

