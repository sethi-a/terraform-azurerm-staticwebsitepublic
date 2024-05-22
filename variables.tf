# Input variable definitions
variable "location" {
  description = "The Azure Region in which all resources groups should be created."
  type = string 
  default = "australiaeast"
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type = string   
    
   validation {
    condition = length(var.resource_group_name) <= 12
    error_message = "The repository name must be less than or equal to 10 characters."
  }
}