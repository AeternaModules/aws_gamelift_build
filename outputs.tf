output "gamelift_builds_id" {
  description = "Map of id values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gamelift_builds_arn" {
  description = "Map of arn values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "gamelift_builds_name" {
  description = "Map of name values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "gamelift_builds_operating_system" {
  description = "Map of operating_system values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => v.operating_system if v.operating_system != null && length(v.operating_system) > 0 }
}
output "gamelift_builds_region" {
  description = "Map of region values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => v.region if v.region != null && length(v.region) > 0 }
}
output "gamelift_builds_storage_location" {
  description = "Map of storage_location values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => one(v.storage_location) if v.storage_location != null && length(v.storage_location) > 0 }
}
output "gamelift_builds_tags" {
  description = "Map of tags values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "gamelift_builds_tags_all" {
  description = "Map of tags_all values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "gamelift_builds_version" {
  description = "Map of version values across all gamelift_builds, keyed the same as var.gamelift_builds"
  value       = { for k, v in aws_gamelift_build.gamelift_builds : k => v.version if v.version != null && length(v.version) > 0 }
}

