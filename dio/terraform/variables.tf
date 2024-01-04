variable "tags" {
  default = {
    "Environment" = "Production"
    "Team"        = "Infraestructure"
    "Owner"       = "victor@cleber.com"
  }
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "subscription_id" {
  default = "your-subscription-id-here"
}