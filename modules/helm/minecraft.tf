# resource "kubernetes_namespace" "minecraft" {
#   metadata {
#     name = <fill-in>
#   }
# }

# resource "helm_release" "router" {
#   name       = <fill-in>
#   repository = <fill-in>
#   chart      = <fill-in>
#   namespace = kubernetes_namespace.minecraft.metadata[0].name
# }

# resource "helm_release" "minecraft" {
#   name       = <fill-in>
#   repository = <fill-in>
#   chart      = <fill-in>
#   namespace = kubernetes_namespace.minecraft.metadata[0].name
#   set {
#     name = "minecraftServer.eula"
#     value = "true"
#   }
# }