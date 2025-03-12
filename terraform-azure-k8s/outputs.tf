output "resource_group_name" {
  value = azurerm_resource_group.k8s_rg.name
}


# output "k8s_cluster_name" {
#   value = azurerm_kubernetes_cluster.example.name
# }


# output "k8s_cluster_location" {
#   value = azurerm_kubernetes_cluster.example.location
# }

# output "kube_config" {
#   value = azurerm_kubernetes_cluster.example.kube_admin_config
# }