# Copyright (c) 2023 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "tenancy_ocid" {}
variable "region" { description = "Your tenancy region" }
variable "user_ocid" { default = "" }
variable "fingerprint" { default = "" }
variable "private_key_path" { default = "" }
variable "private_key_password" { default = "" }
variable "clusters_configuration" {
  type = any
}
variable "workers_configuration" {
  type = any
}


variable "compartments_dependency" {
  description = "A map of objects containing the externally managed compartments this module may depend on. All map objects must have the same type and must contain an 'id' attribute of string type set with the compartment OCID. See External Dependencies section in README.md (https://github.com/oracle-quickstart/terraform-oci-cis-landing-zone-networking#ext-dep) for details."
  type = map(object({
    id = string
  }))
  default = null
}

variable "network_dependency" {
  description = "An object containing the externally managed network resources this module may depend on. Supported resources are 'vcns', 'dynamic_routing_gateways', 'drg_attachments', 'local_peering_gateways', and 'remote_peering_connections', represented as map of objects. Each object, when defined, must have an 'id' attribute of string type set with the VCN, DRG OCID, DRG Attachment OCID, Local Peering Gateway OCID or Remote Peering Connection OCID. 'remote_peering_connections' must also pass the peer region name in the region_name attribute. See External Dependencies section in README.md (https://github.com/oracle-quickstart/terraform-oci-cis-landing-zone-networking#ext-dep) for details."
  type = object({
    vcns = optional(map(object({
      id = string # the VCN OCID
    })))
    dynamic_routing_gateways = optional(map(object({
      id = string # the DRG OCID
    })))
    drg_attachments = optional(map(object({
      id = string # the DRG attachment OCID
    })))
    local_peering_gateways = optional(map(object({
      id = string # the LPG OCID
    })))
    remote_peering_connections = optional(map(object({
      id = string # the peer RPC OCID
      region_name = string # the peer RPC region name
    })))
  })
  default = null
}

