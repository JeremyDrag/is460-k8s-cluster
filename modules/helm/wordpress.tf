resource "kubernetes_namespace" "wordpress" {
  metadata {
    name = <fill-in>
  }
}

resource "helm_release" "wordpress" {
  name       = <fill-in>
  repository = <fill-in>
  chart      = <fill-in>
  namespace = kubernetes_namespace.wordpress.metadata[0].name
}