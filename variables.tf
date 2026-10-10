variable "ce_anomaly_subscriptions" {
  description = <<EOT
Map of ce_anomaly_subscriptions, attributes below
Required:
    - frequency
    - monitor_arn_list
    - name
    - subscriber (block):
        - address (required)
        - type (required)
Optional:
    - account_id
    - tags
    - tags_all
    - threshold_expression (block):
        - and (optional, block):
            - cost_category (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - dimension (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - tags (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
        - cost_category (optional, block):
            - key (optional)
            - match_options (optional)
            - values (optional)
        - dimension (optional, block):
            - key (optional)
            - match_options (optional)
            - values (optional)
        - not (optional, block):
            - cost_category (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - dimension (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - tags (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
        - or (optional, block):
            - cost_category (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - dimension (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
            - tags (optional, block):
                - key (optional)
                - match_options (optional)
                - values (optional)
        - tags (optional, block):
            - key (optional)
            - match_options (optional)
            - values (optional)
EOT

  type = map(object({
    frequency        = string
    monitor_arn_list = list(string)
    name             = string
    account_id       = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
    subscriber = list(object({
      address = string
      type    = string
    }))
    threshold_expression = optional(object({
      and = optional(list(object({
        cost_category = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
        dimension = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
        tags = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
      })))
      cost_category = optional(object({
        key           = optional(string)
        match_options = optional(set(string))
        values        = optional(set(string))
      }))
      dimension = optional(object({
        key           = optional(string)
        match_options = optional(set(string))
        values        = optional(set(string))
      }))
      not = optional(object({
        cost_category = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
        dimension = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
        tags = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
      }))
      or = optional(list(object({
        cost_category = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
        dimension = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
        tags = optional(object({
          key           = optional(string)
          match_options = optional(set(string))
          values        = optional(set(string))
        }))
      })))
      tags = optional(object({
        key           = optional(string)
        match_options = optional(set(string))
        values        = optional(set(string))
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ce_anomaly_subscriptions : (
        length(v.subscriber) >= 1
      )
    ])
    error_message = "Each subscriber list must contain at least 1 items"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

