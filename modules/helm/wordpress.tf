resource "kubernetes_namespace" "wordpress" {
  metadata {
    name = "wordpress"
  }
}

resource "helm_release" "wordpress" {
  name       = "wordpress"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "wordpress"
  namespace = kubernetes_namespace.wordpress.metadata[0].name

  #   values = [
  #     "${file("values.yaml")}"
  #   ]

  #   set {
  #     name  = "cluster.enabled"
  #     value = "true"
  #   }

  #   set {
  #     name  = "metrics.enabled"
  #     value = "true"
  #   }

  #   set {
  #     name  = "service.annotations.prometheus\\.io/port"
  #     value = "9127"
  #     type  = "string"
  #   }
}