variable "domain" {
  description = "The domain name to be checked by the health check"
  type        = string
  default     = "service-delivery-platform-test.lodestone.com"
}

variable "port" {
  description = "The port used for the health check"
  type        = number
  default     = 443
}

variable "type" {
  description = "The type of the health check (HTTP or HTTPS)"
  type        = string
  default     = "HTTPS"
}

variable "resource_path" {
  description = "The path to check on the domain"
  type        = string
  default     = "/api/status"
}

variable "failure_threshold" {
  description = "The number of consecutive health check failures before considered unhealthy"
  type        = number
  default     = 3
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {
    Name = "hc-lodestone-api-status"
  }
}
