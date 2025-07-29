terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "= 1.3.2" # Pinned to the version that supports kubernetes block
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = var.client_id         
  client_secret   = var.client_secret    
  tenant_id       = var.tenant_id        
  subscription_id = var.subscription_id   
  }

variable "client_id" {}       
variable "client_secret" {}
variable "tenant_id" {}       
variable "subscription_id" {} 

# terraform-pipeline  is the name of the ( App Registration )
# permission for the App Registration 
  # Owner under the subscription
  #  User access administrator