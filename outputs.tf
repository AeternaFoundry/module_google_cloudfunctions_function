output "cloudfunctions_functions_id" {
  description = "Map of id values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no id are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfunctions_functions_automatic_update_policy" {
  description = "Map of automatic_update_policy values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no automatic_update_policy are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => one(v.automatic_update_policy) if v.automatic_update_policy != null && length(v.automatic_update_policy) > 0 }
}
output "cloudfunctions_functions_available_memory_mb" {
  description = "Map of available_memory_mb values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no available_memory_mb are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.available_memory_mb if v.available_memory_mb != null }
}
output "cloudfunctions_functions_build_environment_variables" {
  description = "Map of build_environment_variables values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no build_environment_variables are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.build_environment_variables if v.build_environment_variables != null && length(v.build_environment_variables) > 0 }
}
output "cloudfunctions_functions_build_service_account" {
  description = "Map of build_service_account values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no build_service_account are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.build_service_account if v.build_service_account != null && length(v.build_service_account) > 0 }
}
output "cloudfunctions_functions_build_worker_pool" {
  description = "Map of build_worker_pool values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no build_worker_pool are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.build_worker_pool if v.build_worker_pool != null && length(v.build_worker_pool) > 0 }
}
output "cloudfunctions_functions_deletion_policy" {
  description = "Map of deletion_policy values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloudfunctions_functions_description" {
  description = "Map of description values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no description are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloudfunctions_functions_docker_registry" {
  description = "Map of docker_registry values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no docker_registry are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.docker_registry if v.docker_registry != null && length(v.docker_registry) > 0 }
}
output "cloudfunctions_functions_docker_repository" {
  description = "Map of docker_repository values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no docker_repository are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.docker_repository if v.docker_repository != null && length(v.docker_repository) > 0 }
}
output "cloudfunctions_functions_effective_labels" {
  description = "Map of effective_labels values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no effective_labels are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "cloudfunctions_functions_entry_point" {
  description = "Map of entry_point values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no entry_point are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.entry_point if v.entry_point != null && length(v.entry_point) > 0 }
}
output "cloudfunctions_functions_environment_variables" {
  description = "Map of environment_variables values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no environment_variables are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.environment_variables if v.environment_variables != null && length(v.environment_variables) > 0 }
}
output "cloudfunctions_functions_event_trigger" {
  description = "Map of event_trigger values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no event_trigger are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => one(v.event_trigger) if v.event_trigger != null && length(v.event_trigger) > 0 }
}
output "cloudfunctions_functions_https_trigger_security_level" {
  description = "Map of https_trigger_security_level values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no https_trigger_security_level are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.https_trigger_security_level if v.https_trigger_security_level != null && length(v.https_trigger_security_level) > 0 }
}
output "cloudfunctions_functions_https_trigger_url" {
  description = "Map of https_trigger_url values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no https_trigger_url are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.https_trigger_url if v.https_trigger_url != null && length(v.https_trigger_url) > 0 }
}
output "cloudfunctions_functions_ingress_settings" {
  description = "Map of ingress_settings values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no ingress_settings are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.ingress_settings if v.ingress_settings != null && length(v.ingress_settings) > 0 }
}
output "cloudfunctions_functions_kms_key_name" {
  description = "Map of kms_key_name values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no kms_key_name are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.kms_key_name if v.kms_key_name != null && length(v.kms_key_name) > 0 }
}
output "cloudfunctions_functions_labels" {
  description = "Map of labels values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no labels are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "cloudfunctions_functions_max_instances" {
  description = "Map of max_instances values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no max_instances are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.max_instances if v.max_instances != null }
}
output "cloudfunctions_functions_min_instances" {
  description = "Map of min_instances values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no min_instances are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.min_instances if v.min_instances != null }
}
output "cloudfunctions_functions_name" {
  description = "Map of name values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no name are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudfunctions_functions_on_deploy_update_policy" {
  description = "Map of on_deploy_update_policy values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no on_deploy_update_policy are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => one(v.on_deploy_update_policy) if v.on_deploy_update_policy != null && length(v.on_deploy_update_policy) > 0 }
}
output "cloudfunctions_functions_project" {
  description = "Map of project values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no project are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.project if v.project != null && length(v.project) > 0 }
}
output "cloudfunctions_functions_region" {
  description = "Map of region values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no region are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudfunctions_functions_runtime" {
  description = "Map of runtime values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no runtime are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.runtime if v.runtime != null && length(v.runtime) > 0 }
}
output "cloudfunctions_functions_secret_environment_variables" {
  description = "Map of secret_environment_variables values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no secret_environment_variables are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.secret_environment_variables if v.secret_environment_variables != null && length(v.secret_environment_variables) > 0 }
}
output "cloudfunctions_functions_secret_volumes" {
  description = "Map of secret_volumes values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no secret_volumes are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.secret_volumes if v.secret_volumes != null && length(v.secret_volumes) > 0 }
}
output "cloudfunctions_functions_service_account_email" {
  description = "Map of service_account_email values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no service_account_email are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.service_account_email if v.service_account_email != null && length(v.service_account_email) > 0 }
}
output "cloudfunctions_functions_source_archive_bucket" {
  description = "Map of source_archive_bucket values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no source_archive_bucket are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.source_archive_bucket if v.source_archive_bucket != null && length(v.source_archive_bucket) > 0 }
}
output "cloudfunctions_functions_source_archive_object" {
  description = "Map of source_archive_object values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no source_archive_object are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.source_archive_object if v.source_archive_object != null && length(v.source_archive_object) > 0 }
}
output "cloudfunctions_functions_source_repository" {
  description = "Map of source_repository values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no source_repository are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => one(v.source_repository) if v.source_repository != null && length(v.source_repository) > 0 }
}
output "cloudfunctions_functions_status" {
  description = "Map of status values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no status are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.status if v.status != null && length(v.status) > 0 }
}
output "cloudfunctions_functions_terraform_labels" {
  description = "Map of terraform_labels values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no terraform_labels are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "cloudfunctions_functions_timeout" {
  description = "Map of timeout values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no timeout are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.timeout if v.timeout != null }
}
output "cloudfunctions_functions_trigger_http" {
  description = "Map of trigger_http values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no trigger_http are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.trigger_http if v.trigger_http != null }
}
output "cloudfunctions_functions_version_id" {
  description = "Map of version_id values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no version_id are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.version_id if v.version_id != null && length(v.version_id) > 0 }
}
output "cloudfunctions_functions_vpc_connector" {
  description = "Map of vpc_connector values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no vpc_connector are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.vpc_connector if v.vpc_connector != null && length(v.vpc_connector) > 0 }
}
output "cloudfunctions_functions_vpc_connector_egress_settings" {
  description = "Map of vpc_connector_egress_settings values across all cloudfunctions_functions, keyed the same as var.cloudfunctions_functions except keys with no vpc_connector_egress_settings are omitted"
  value       = { for k, v in google_cloudfunctions_function.cloudfunctions_functions : k => v.vpc_connector_egress_settings if v.vpc_connector_egress_settings != null && length(v.vpc_connector_egress_settings) > 0 }
}

