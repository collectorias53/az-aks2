resource "azurerm_resource_group" "rgterra" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aksblock" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rgterra.location
  resource_group_name = azurerm_resource_group.rgterra.name
  dns_prefix          = var.dns_prefix

  

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}
