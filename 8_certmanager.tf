resource "helm_release" "cert_manager" {
  depends_on = [azurerm_kubernetes_cluster.this]

  name             = "cert-manager"
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  namespace        = "cert-manager"
  create_namespace = true
  version          = "v1.18.2"

  set = [
    {
      name  = "installCRDs"
      value = "true"
    }
  ]
}
