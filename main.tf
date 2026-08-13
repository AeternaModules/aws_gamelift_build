resource "aws_gamelift_build" "gamelift_builds" {
  for_each = var.gamelift_builds

  name             = each.value.name
  operating_system = each.value.operating_system
  region           = each.value.region
  tags             = each.value.tags
  tags_all         = each.value.tags_all
  version          = each.value.version

  storage_location {
    bucket         = each.value.storage_location.bucket
    key            = each.value.storage_location.key
    object_version = each.value.storage_location.object_version
    role_arn       = each.value.storage_location.role_arn
  }
}

