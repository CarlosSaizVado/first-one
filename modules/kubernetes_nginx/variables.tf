variable "nginx_image" {
  description = "The Docker image to use for the NGINX deployment."
  type        = string
  default     = "nginx:latest"
}

variable "namespace" {
  description = "The Kubernetes namespace to deploy the NGINX resources."
  type        = string
  default     = "default"
}

variable "service_name" {
  description = "The name of the NGINX service."
  type        = string
  default     = "nginx-service"
}

variable "deployment_name" {
  description = "The name of the NGINX deployment."
  type        = string
  default     = "nginx-deployment"
}

variable "replicas" {
  description = "The number of replicas for the NGINX deployment."
  type        = number
  default     = 1
}