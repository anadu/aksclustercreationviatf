data "azurerm_subnet" "example" {
  name                 = var.subnetname
  virtual_network_name = var.vnetname
  resource_group_name  = var.rg
}