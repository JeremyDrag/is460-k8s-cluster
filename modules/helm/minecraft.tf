resource "kubernetes_namespace" "minecraft" {
  metadata {
    name = "minecraft"
  }
}

resource "helm_release" "router" {
  name       = "mc-router"
  repository = "https://itzg.github.io/minecraft-server-charts/"
  chart      = "itzg/mc-router"
  namespace = kubernetes_namespace.minecraft.metadata["name"]

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