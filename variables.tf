variable "workflows" {
  description = <<EOT
Map of workflows, attributes below
Required:
    - name
    - on
    - realm
    - step (block):
        - after (optional)
        - config (optional)
        - priority (optional)
        - uses (required)
Optional:
    - cancel_in_progress
    - conditions
    - enabled
    - restart_in_progress
    - schedule (block):
        - after (optional)
        - batch_size (optional)
EOT

  type = map(object({
    name                = string
    on                  = string
    realm               = string
    cancel_in_progress  = optional(string)
    conditions          = optional(string)
    enabled             = optional(bool)
    restart_in_progress = optional(string)
    step = list(object({
      after    = optional(string)
      config   = optional(map(string))
      priority = optional(string)
      uses     = string
    }))
    schedule = optional(object({
      after      = optional(string)
      batch_size = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workflows : (
        length(v.step) >= 1
      )
    ])
    error_message = "Each step list must contain at least 1 items"
  }
}

