provider "azurerm"{
  features {}
  subscription_id = "f2c53df9-eb39-4ecd-8d32-ed1160378712"
}
terraform {
   required_version = ">= 1.0.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }

}

locals {
env = "dev"
}

resource "azurerm_resource_group" "attrg" {
  name     ="var.resource_group_name-${local.env}-aks-rg-01"
  location = var.location
  
    }

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "var.cluster_name-${local.env}-aks-01" 
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

   default_node_pool {
    name            = var.default_pool_name
    node_count      = var.node_count
    vm_size         = var.vm_size
    os_disk_size_gb = var.os_disk_size_gb
    vnet_subnet_id  = "var.vnet_subnet_id-${local.env}-aks-snet-01"
    max_pods        = var.max_pods
    type            = var.default_pool_type

    enable_auto_scaling = true
    min_count           = var.min_count
    max_count           = var.max_count

    
   } 
  }
  resource "azurerm_log_analytics_workspace" "example"{
  count               = var.enable_log_analytics_workspace 
  name                = var.cluster_log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.log_analytics_workspace_sku
  retention_in_days   = var.log_retention_in_days


}
