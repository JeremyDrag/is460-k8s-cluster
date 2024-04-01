resource "kubernetes_namespace" "minecraft" {
  metadata {
    name = "minecraft"
  }
}

resource "helm_release" "router" {
  name       = "router"
  repository = "https://itzg.github.io/minecraft-server-charts/"
  chart      = "mc-router"
  namespace = kubernetes_namespace.minecraft.metadata[0].name
  timeout = 15*60
}

resource "helm_release" "minecraft" {
  name       = "minecraft"
  repository = "https://itzg.github.io/minecraft-server-charts/"
  chart      = "minecraft"
  namespace = kubernetes_namespace.minecraft.metadata[0].name
  timeout = 15*60
  set {
    name = "minecraftServer.eula"
    value = "true"
  }
}