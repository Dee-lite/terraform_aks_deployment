# Useful for scripting or integration with Helm or kubectl
output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.this.name
}

output "aks_resource_group" {
  value = azurerm_resource_group.this.name
}

output "aks_host" {
  value = azurerm_kubernetes_cluster.this.kube_config.0.host
}

# Sensitive: Full kubeconfig, for advanced use cases only
output "kube_config" {
  value     = azurerm_kubernetes_cluster.this.kube_config_raw
  sensitive = true
}
