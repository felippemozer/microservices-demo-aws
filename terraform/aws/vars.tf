variable "region" {
  type = string
  description = "AWS region used to setup configuration"
}

variable "name" {
  type = string
  description = "EKS cluster name"
  default = "microservices-demo-aws"
}

variable "cachestore" {
  type = bool
  description = "Whether to set cache or not"
  default = false
}
