# ===========================================
# Terraform Variables for Snowflake Resources
# ===========================================

# Snowflake Role (Default: SYSADMIN)
variable "snowflake_role" {
  type        = string
  default     = "SYSADMIN"
  description = "The role used for managing Snowflake resources."
}

# Snowflake Database Name
variable "snowflake_database" {
  type        = string
  default     = "TF_DEMO"
  description = "Name of the Snowflake database."
}

# Snowflake Warehouse Name
variable "snowflake_warehouse" {
  type        = string
  default     = "TF_DEMO_WH"
  description = "Name of the Snowflake warehouse."
}

# Warehouse Size (Default: X-Small)
variable "warehouse_size" {
  type        = string
  default     = "XSMALL"
  description = "Compute size of the Snowflake warehouse (e.g., XSMALL, SMALL, MEDIUM)."
}

# Auto Suspend Time (in seconds)
variable "auto_suspend" {
  type        = number
  default     = 60
  description = "Auto-suspend time for the warehouse in seconds."
}
