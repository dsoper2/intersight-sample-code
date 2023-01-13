resource "intersight_fabric_port_policy" "fabric_port_policy1" {
  name         = "fabric_port_policy1"
  description  = "demo fabric port policy"
  device_model = "UCS-FI-6454"
  organization {
    object_type = "organization.Organization"
    moid        = var.organization
  }
}

variable "organization" {
    type = string
    description = "organization moid"
  
}