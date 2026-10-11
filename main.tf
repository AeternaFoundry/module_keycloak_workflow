resource "keycloak_workflow" "workflows" {
  for_each = var.workflows

  name                = each.value.name
  on                  = each.value.on
  realm               = each.value.realm
  cancel_in_progress  = each.value.cancel_in_progress
  conditions          = each.value.conditions
  enabled             = each.value.enabled
  restart_in_progress = each.value.restart_in_progress

  dynamic "step" {
    for_each = each.value.step
    content {
      after    = step.value.after
      config   = step.value.config
      priority = step.value.priority
      uses     = step.value.uses
    }
  }

  dynamic "schedule" {
    for_each = each.value.schedule != null ? [each.value.schedule] : []
    content {
      after      = schedule.value.after
      batch_size = schedule.value.batch_size
    }
  }
}

