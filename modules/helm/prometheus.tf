resource "kubernetes_namespace" "prometheus" {
  metadata {
    name = "prometheus"
  }
}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "prometheus"
  namespace = kubernetes_namespace.prometheus.metadata[0].name
}