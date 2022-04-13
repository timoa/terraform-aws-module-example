locals {
  common_tags = merge(var.tags, {
    "Project"     = var.namespace,
    "Environment" = var.stage
  })
}

# Available AZ for the current aws provider region
data "aws_availability_zones" "available" {
  state = "available"
}
