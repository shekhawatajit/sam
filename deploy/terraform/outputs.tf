output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.my_aks.name
}

output "aks_cluster_location" {
  value = azurerm_kubernetes_cluster.my_aks.location
}

output "aks_cluster_kube_config" {
  value = azurerm_kubernetes_cluster.my_aks.kube_config
}