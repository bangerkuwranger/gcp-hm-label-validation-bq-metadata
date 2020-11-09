data "external" "metadata_validation" {
  program = ["/usr/bin/bash", "${path.module}/bash/validate_meta_values.sh.sh"]
  query = {
    metadata_project    = var.metadata_project
    metadata_dataset    = var.metadata_dataset
    entity              = var.entity
    enterprise_platform = var.enterprise_platform
    bu_flex             = var.bu_flex
    cost_center         = var.cost_center
    cost_code           = var.cost_code
    environment         = var.environment
  }
}

locals {
  
}