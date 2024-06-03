resource "aws_eks_cluster" "this" {
  name = var.name
  role_arn = aws_iam_role.eks-cluster.arn

  vpc_config {
    subnet_ids = toset(aws_subnet.this[*].id)
  }

  depends_on = [ aws_iam_role_policy_attachment.eks-cluster ]
}
