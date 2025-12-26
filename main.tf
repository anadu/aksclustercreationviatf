provider "azurerm" {
  features {}
  subscription_id="a3bdf793-32e4-4604-aa40-ad21d74b1bdd"
}

module "rg" {
    source = "./modules"
    rg = var.rg
    subnetname = var.subnetname
    vnetname = var.vnetname
    aksname = var.aksname
    dns_prefix = var.dns_prefix
    nodename = var.nodename
    node_count = var.node_count
    vm_size = var.vm_size
    identity = var.identity
    sku_tier = var.sku_tier
    create_user_pool = var.create_user_pool
    userpool = var.userpool
    vmsizenode = var.vmsizenode
    min_count = var.min_count
    max_count = var.max_count

}

