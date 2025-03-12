output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_admin_config
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}


