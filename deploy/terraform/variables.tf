variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
  default     = 3
}

variable "node_size" {
  description = "The size of the nodes in the AKS cluster"
  type        = string
  default     = "Standard_DS2_v2"
}