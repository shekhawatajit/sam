resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  sku_tier            = "Free"
  node_resource_group = "${var.resource_group_name}-infra" 

  default_node_pool  {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.node_size

  }
    identity {
    type = "SystemAssigned"
  }

  kubernetes_version = var.kubernetes_version

}