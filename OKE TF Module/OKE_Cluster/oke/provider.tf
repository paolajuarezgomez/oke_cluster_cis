terraform {
  required_version = ">=1.5.7"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "6.2.0"
      configuration_aliases = [oci.home]
    }
  }
}

provider "oci" {
  region = var.region
}

provider "oci" {
  alias = "home"
  region = one(data.oci_identity_region_subscriptions.home.region_subscriptions[*].region_name)
}