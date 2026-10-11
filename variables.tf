variable "cloudfunctions_functions" {
  description = <<EOT
Map of cloudfunctions_functions, attributes below
Required:
    - name
    - runtime
Optional:
    - available_memory_mb
    - build_environment_variables
    - build_service_account
    - build_worker_pool
    - deletion_policy
    - description
    - docker_registry
    - docker_repository
    - entry_point
    - environment_variables
    - https_trigger_security_level
    - https_trigger_url
    - ingress_settings
    - kms_key_name
    - labels
    - max_instances
    - min_instances
    - project
    - region
    - service_account_email
    - source_archive_bucket
    - source_archive_object
    - timeout
    - trigger_http
    - vpc_connector
    - vpc_connector_egress_settings
    - automatic_update_policy (block):
    - event_trigger (block):
        - event_type (required)
        - failure_policy (optional, block):
            - retry (required)
        - resource (required)
    - on_deploy_update_policy (block):
    - secret_environment_variables (block):
        - key (required)
        - project_id (optional)
        - secret (required)
        - version (required)
    - secret_volumes (block):
        - mount_path (required)
        - project_id (optional)
        - secret (required)
        - versions (optional, block):
            - path (required)
            - version (required)
    - source_repository (block):
        - url (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                          = string
    runtime                       = string
    available_memory_mb           = optional(number)
    build_environment_variables   = optional(map(string))
    build_service_account         = optional(string)
    build_worker_pool             = optional(string)
    deletion_policy               = optional(string)
    description                   = optional(string)
    docker_registry               = optional(string)
    docker_repository             = optional(string)
    entry_point                   = optional(string)
    environment_variables         = optional(map(string))
    https_trigger_security_level  = optional(string)
    https_trigger_url             = optional(string)
    ingress_settings              = optional(string)
    kms_key_name                  = optional(string)
    labels                        = optional(map(string))
    max_instances                 = optional(number)
    min_instances                 = optional(number)
    project                       = optional(string)
    region                        = optional(string)
    service_account_email         = optional(string)
    source_archive_bucket         = optional(string)
    source_archive_object         = optional(string)
    timeout                       = optional(number)
    trigger_http                  = optional(bool)
    vpc_connector                 = optional(string)
    vpc_connector_egress_settings = optional(string)
    automatic_update_policy = optional(object({
    }))
    event_trigger = optional(object({
      event_type = string
      failure_policy = optional(object({
        retry = bool
      }))
      resource = string
    }))
    on_deploy_update_policy = optional(object({
    }))
    secret_environment_variables = optional(list(object({
      key        = string
      project_id = optional(string)
      secret     = string
      version    = string
    })))
    secret_volumes = optional(list(object({
      mount_path = string
      project_id = optional(string)
      secret     = string
      versions = optional(list(object({
        path    = string
        version = string
      })))
    })))
    source_repository = optional(object({
      url = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudfunctions_functions : (
        v.timeout == null || (v.timeout >= 1 && v.timeout <= 540)
      )
    ])
    error_message = "must be between 1 and 540"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfunctions_functions : (
        v.max_instances == null || (v.max_instances >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudfunctions_functions : (
        v.min_instances == null || (v.min_instances >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

