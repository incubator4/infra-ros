variable "CHINANET_USERNAME" {
  description = "Chinanet username"
  type        = string
}

variable "CHINANET_PASSWORD" {
  description = "Chinanet password"
  type        = string
}

variable "MIKROTIK_HOST" {
  description = "Mikrotik hostname"
  type        = string
}

variable "MIKROTIK_USER" {
  description = "Mikrotik username"
  type        = string
}

variable "MIKROTIK_PASSWORD" {
  description = "Mikrotik password"
  type        = string
}

variable "MIKROTIK_INSECURE" {
  description = "Mikrotik insecure"
  type        = bool
  default     = true
}

variable "CLOUDFLARE_ZONE_ID" {
  description = "Cloudflare zone ID"
  type        = string
  default     = "ebd69649b9049a9f8b226ae4fc809bba"
}

variable "CLOUDFLARE_RECORD_ID" {
  description = "Cloudflare record ID"
  type        = string
  default     = "c3a4ac18530ccccfb559f081f56e5ed7"
}

variable "CLOUDFLARE_RECORD_NAME" {
  description = "Cloudflare record name"
  type        = string
  default     = "liangzhu.incubator4.com"
}

variable "CLOUDFLARE_TOKEN" {
  description = "Cloudflare token"
  type        = string
}
