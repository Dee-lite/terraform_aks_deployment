resource "helm_release" "external_nginx" {
  depends_on = [azurerm_kubernetes_cluster.this]

  name             = "external"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  namespace        = "ingress"
  create_namespace = true
  version          = "4.8.0"

  values = [file("${path.module}/values/ingress.yaml")]
}
