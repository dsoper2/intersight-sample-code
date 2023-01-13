resource "intersight_fabric_eth_network_control_policy" "fabric_eth_network_control_policy1" {
  name        = "fabric_eth_network_control_policy1"
  description = "demo eth network control policy"
  cdp_enabled = false
  forge_mac   = "allow"
  lldp_settings {
    class_id         = "fabric.LldpSettings"
    object_type      = "fabric.LldpSettings"
    receive_enabled  = false
    transmit_enabled = false
  }
  mac_registration_mode = "allVlans"
  uplink_fail_action    = "linkDown"
  organization {
    object_type = "organization.Organization"
    moid        = var.organization
  }
}

variable "organization" {
    type = string
    description = "<organization of moid>"
  
}