# Local Values
# https://www.terraform.io/docs/language/values/locals.html

locals {
  cluster_id = module.helpers.zone != null ? "${var.cluster_prefix}-${module.helpers.region}-${module.helpers.zone}-${module.helpers.env}" : "${var.cluster_prefix}-${module.helpers.region}-${module.helpers.env}"

  helm_values = {
    "app.server.clusterID"                     = local.cluster_id
    "podLabels.tags\\.datadoghq\\.com/env"     = module.helpers.environment
    "podLabels.tags\\.datadoghq\\.com/version" = var.cert_manager_istio_csr_version
    "resources.limits.cpu"                     = var.resources_limits_cpu
    "resources.limits.memory"                  = var.resources_limits_memory
    "resources.requests.cpu"                   = var.resources_requests_cpu
    "resources.requests.memory"                = var.resources_requests_memory
  }
}
