resource "aws_ecs_cluster" "main" {
  name = "${var.name_prefix}-ecs-cluster"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.name_prefix}-ecs-cluster"
    }
  )
}