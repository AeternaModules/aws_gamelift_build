variable "gamelift_builds" {
  description = <<EOT
Map of gamelift_builds, attributes below
Required:
    - name
    - operating_system
    - storage_location (block):
        - bucket (required)
        - key (required)
        - object_version (optional)
        - role_arn (required)
Optional:
    - region
    - tags
    - tags_all
    - version
EOT

  type = map(object({
    name             = string
    operating_system = string
    region           = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
    version          = optional(string)
    storage_location = object({
      bucket         = string
      key            = string
      object_version = optional(string)
      role_arn       = string
    })
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

