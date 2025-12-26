
resource "azurerm_kubernetes_cluster_node_pool" "user" {
  count = var.create_user_pool ? 1 : 0

  kubernetes_cluster_id = azurerm_kubernetes_cluster.example.id
  name                  = "userpool"
  mode                  = "User"

  vm_size               = "Standard_D4s_v5"
  

  auto_scaling_enabled   = true
  min_count             = 1
  max_count             = 10

 
  lifecycle {
    ignore_changes = [ node_count ]
  }

 
}
