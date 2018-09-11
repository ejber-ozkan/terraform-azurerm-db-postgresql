variable "psql" {
  default = {
    resource_group_name = "az-nonprod-pgsql-rg"
    name     = "az-pgsql-db"
    location = "north europe"

    sku_name   = "B_Gen5_2"
    storage_gb = 5

    backup_retention_days = 7
    geo_redundant_backup  = "Disabled"

    # must change this before committing 
    administrator          = "team"
    administrator_password = ""

    version         = "9.6"
    ssl_enforcement = "Enabled"
  }
}

variable "config" {
  default = {}
}
