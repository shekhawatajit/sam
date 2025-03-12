resource "azurerm_resource_group" "k8s_rg" {
  name     = var.resource_group_name
  location = var.location
}

module "k8s_cluster" {
  source              = "./modules/k8s-cluster"
  resource_group_name = azurerm_resource_group.k8s_rg.name
  location            = azurerm_resource_group.k8s_rg.location
  cluster_name        = var.cluster_name
  node_count          = var.node_count
  node_size           = var.node_size
  kubernetes_version  = var.kubernetes_version
  dns_prefix          = var.dns_prefix
  client_id           = var.client_id
  client_secret       = var.client_secret

}
