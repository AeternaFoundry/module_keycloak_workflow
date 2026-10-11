output "workflows_id" {
  description = "Map of id values across all workflows, keyed the same as var.workflows except keys with no id are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workflows_cancel_in_progress" {
  description = "Map of cancel_in_progress values across all workflows, keyed the same as var.workflows except keys with no cancel_in_progress are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.cancel_in_progress if v.cancel_in_progress != null && length(v.cancel_in_progress) > 0 }
}
output "workflows_conditions" {
  description = "Map of conditions values across all workflows, keyed the same as var.workflows except keys with no conditions are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.conditions if v.conditions != null && length(v.conditions) > 0 }
}
output "workflows_enabled" {
  description = "Map of enabled values across all workflows, keyed the same as var.workflows except keys with no enabled are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.enabled if v.enabled != null }
}
output "workflows_name" {
  description = "Map of name values across all workflows, keyed the same as var.workflows except keys with no name are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workflows_on" {
  description = "Map of on values across all workflows, keyed the same as var.workflows except keys with no on are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.on if v.on != null && length(v.on) > 0 }
}
output "workflows_realm" {
  description = "Map of realm values across all workflows, keyed the same as var.workflows except keys with no realm are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.realm if v.realm != null && length(v.realm) > 0 }
}
output "workflows_restart_in_progress" {
  description = "Map of restart_in_progress values across all workflows, keyed the same as var.workflows except keys with no restart_in_progress are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.restart_in_progress if v.restart_in_progress != null && length(v.restart_in_progress) > 0 }
}
output "workflows_schedule" {
  description = "Map of schedule values across all workflows, keyed the same as var.workflows except keys with no schedule are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => one(v.schedule) if v.schedule != null && length(v.schedule) > 0 }
}
output "workflows_state" {
  description = "Map of state values across all workflows, keyed the same as var.workflows except keys with no state are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.state if v.state != null && length(v.state) > 0 }
}
output "workflows_step" {
  description = "Map of step values across all workflows, keyed the same as var.workflows except keys with no step are omitted"
  value       = { for k, v in keycloak_workflow.workflows : k => v.step if v.step != null && length(v.step) > 0 }
}

