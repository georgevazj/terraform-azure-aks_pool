terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "aks_pool" {
  kubernetes_cluster_id = var.kubernetes_cluster_id
  name                  = var.name
  vm_size               = var.vm_size
  type = var.type

  vnet_subnet_id = var.vnet_subnet_id
  enable_node_public_ip = var.enable_node_public_ip
  enable_auto_scaling = true
  min_count = var.min_count
  max_count = var.max_count
}