resource "aws_elasticache_cluster" "this" {
  count = var.cachestore ? 1 : 0
  cluster_id = "${var.name}-cache"

  node_type = "t2.micro"

  depends_on = [ aws_eks_cluster.this ]
}
