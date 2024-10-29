# Input Variables
# https://www.terraform.io/language/values/variables

variable "artifact_registry" {
  description = "The registry to pull the images from"
  type        = string
  default     = "us-docker.pkg.dev/plt-lz-services-tf79-prod/plt-docker-virtual"
}

variable "cain_injector_replicas" {
  description = "The number of replicas to run for the cain-injector"
  type        = number
  default     = 1
}

variable "cain_injector_resources_limits_cpu" {
  description = "The CPU limit for the cain-injector resources"
  type        = string
  default     = "20m"
}

variable "cain_injector_resources_limits_memory" {
  description = "The memory limit for the cain-injector resources"
  type        = string
  default     = "64Mi"
}

variable "cain_injector_resources_requests_cpu" {
  description = "The CPU request for the cain-injector resources"
  type        = string
  default     = "10m"
}

variable "cain_injector_resources_requests_memory" {
  description = "The memory request for the cain-injector resources"
  type        = string
  default     = "32Mi"
}

variable "cert_manager_version" {
  description = "The version to install, this is used for the chart as well as the image tag"
  type        = string
  default     = "1.16.1"
}

variable "chart_repository" {
  description = "The repository to pull the cert-manager Helm chart from"
  type        = string
  default     = "https://charts.jetstack.io"
}

variable "helpers_cost_center" {
  description = "The cost center the resources will be billed to, must start with 'x' followed by three or four digits"
  type        = string
}

variable "helpers_data_classification" {
  description = "The data classification of the resources can be public, internal, or confidential"
  type        = string
}

variable "helpers_email" {
  description = "The email address of the team responsible for the resources"
  type        = string
}

variable "helpers_repository" {
  description = "The repository name (should be in the format 'owner/repo' containing only lowercase alphanumeric characters or hyphens)"
  type        = string
}

variable "helpers_team" {
  description = "The team name (should contain only lowercase alphanumeric characters and hyphens)"
  type        = string
}

variable "replicas" {
  description = "The number of replicas to run"
  type        = number
  default     = 1
}

variable "resources_limits_cpu" {
  description = "The CPU limit for the resources"
  type        = string
  default     = "20m"
}

variable "resources_limits_memory" {
  description = "The memory limit for the resources"
  type        = string
  default     = "64Mi"
}

variable "resources_requests_cpu" {
  description = "The CPU request for the resources"
  type        = string
  default     = "10m"
}

variable "resources_requests_memory" {
  description = "The memory request for the resources"
  type        = string
  default     = "32Mi"
}

variable "startupapicheck_resources_limits_cpu" {
  description = "The CPU limit for the startupapicheck resources"
  type        = string
  default     = "20m"
}

variable "startupapicheck_resources_limits_memory" {
  description = "The memory limit for the startupapicheck resources"
  type        = string
  default     = "64Mi"
}

variable "startupapicheck_resources_requests_cpu" {
  description = "The CPU request for the startupapicheck resources"
  type        = string
  default     = "10m"
}

variable "startupapicheck_resources_requests_memory" {
  description = "The memory request for the startupapicheck resources"
  type        = string
  default     = "32Mi"
}

variable "webhook_replicas" {
  description = "The number of replicas to run for the webhook"
  type        = number
  default     = 1
}

variable "webhook_resources_limits_cpu" {
  description = "The CPU limit for the webhook resources"
  type        = string
  default     = "20m"
}

variable "webhook_resources_limits_memory" {
  description = "The memory limit for the webhook resources"
  type        = string
  default     = "64Mi"
}

variable "webhook_resources_requests_cpu" {
  description = "The CPU request for the webhook resources"
  type        = string
  default     = "10m"
}

variable "webhook_resources_requests_memory" {
  description = "The memory request for the webhook resources"
  type        = string
  default     = "32Mi"
}
