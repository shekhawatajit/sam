provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_resource_group" {
  name     = "my-resource-group"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "my_aks_cluster" {
  name                = "my-aks-cluster"
  location            = azurerm_resource_group.my_resource_group.location
  resource_group_name = azurerm_resource_group.my_resource_group.name
  dns_prefix          = "myaks"

  agent_pool_profile {
    name       = "agentpool"
    count      = 3
    vm_size    = "Standard_DS2_v2"
    os_type    = "Linux"
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }

  tags = {
    environment = "development"
  }
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.my_aks_cluster.kube_admin_config
}

output "client_id" {
  value = azurerm_kubernetes_cluster.my_aks_cluster.identity[0].principal_id
}