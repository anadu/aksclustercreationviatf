
resource "azurerm_kubernetes_cluster_node_pool" "user" {
  count = var.create_user_pool ? 1 : 0

  kubernetes_cluster_id = azurerm_kubernetes_cluster.example.id
  name                  = var.userpool
  mode                  = "User"

  vm_size               = var.vmsizenode
  

  auto_scaling_enabled   = true
  min_count             = var.min_count
  max_count             = var.max_count

 
  lifecycle {
    ignore_changes = [ node_count ]
  }

 
}
