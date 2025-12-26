resource "azurerm_kubernetes_cluster" "example" {
  name                = var.aksname
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix
  sku_tier            = var.sku_tier


  default_node_pool {
    name       = var.nodename
    node_count = var.node_count
    vm_size    = var.vm_size
    

  }

  identity {
    type = var.identity
  }
}  

