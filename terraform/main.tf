# ===========================================
# Terraform Configuration for Snowflake
# ===========================================

terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

# -------------------------------------------
# Snowflake Provider Configuration
# -------------------------------------------
provider "snowflake" {
  role = var.snowflake_role # Uses role from variables.tf
}

# -------------------------------------------
# Snowflake Database Creation
# -------------------------------------------
resource "snowflake_database" "demo_db" {
  name = var.snowflake_database # Uses variable instead of hardcoding
}

# -------------------------------------------
# Snowflake Warehouse Configuration
# -------------------------------------------
resource "snowflake_warehouse" "demo_warehouse" {
  name           = var.snowflake_warehouse
  warehouse_size = var.warehouse_size
  auto_suspend   = var.auto_suspend

  # Best Practices:
  # - Use `auto_resume = true` to restart warehouse when queries run.
  # - Adjust `warehouse_size` based on workload.
}
