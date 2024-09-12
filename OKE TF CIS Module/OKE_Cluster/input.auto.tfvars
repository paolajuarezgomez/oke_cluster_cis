# Copyright (c) 2023 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#--------------------------------------------------------------------------------------------------------------------------------------
# 1. Rename this file to <project-name>.auto.tfvars, where <project-name> is a name of your choice.
# 2. Provide values for "Tenancy Connectivity Variables".
# 3. Replace <REPLACE-BY-*> placeholders with appropriate values.
#--------------------------------------------------------------------------------------------------------------------------------------

#---------------------------------------
# Tenancy Connectivity Variables
#---------------------------------------

#tenancy_ocid         = "<tenancy OCID>"            # Get this from OCI Console (after logging in, go to top-right-most menu item and click option "Tenancy: <your tenancy name>").
#user_ocid            = "<user OCID>"               # Get this from OCI Console (after logging in, go to top-right-most menu item and click option "My profile").
#fingerprint          = "<PEM key fingerprint>"     # The fingerprint can be gathered from your user account. In the "My profile page, click "API keys" on the menu in left hand side.
#private_key_path     = "<path to the private key>" # This is the full path on your local system to the API signing private key.
##private_key_password = ""                          # This is the password that protects the private key, if any.
#region               = "<your tenancy region>"     # The region name.

tenancy_ocid         = "ocid1.tenancy.oc1..aaaaaaaa3lyflh4kaqm25rnbzyurii45kvhmcnjzwhunkc5w4xv5wzrhczcq"
user_ocid            = "ocid1.user.oc1..aaaaaaaaknxiixcfgzgl4artkch4pijnurepcvlrussuflclm3su2rhtybyq"
fingerprint          = "e5:a5:d3:a1:64:37:fa:73:9f:99:51:c4:2c:55:fc:7f"
private_key_path     = "/Users/pjuarez/Desktop/api_keys/oci_api_key.pem"
private_key_password = ""
region               = "eu-frankfurt-1"



#---------------------------------------
# Input variable
#---------------------------------------

clusters_configuration = {
  default_compartment_id = "CMP-PLATFORM-PROD-KEY"
  clusters = {
    OKE1 = {
      name        = "oke-prod-cluster"
      cni_type    = "native"
      is_enhanced = false
      networking = {
        vcn_id                 = "VCN-PROD-KEY"
        api_endpoint_subnet_id = "SN-PROD-CP-KEY"
        api_endpoint_nsg_ids   = ["NSG-PROD-CP"]
            }
        }
    }
}

workers_configuration = {
  default_ssh_public_key_path = "/Users/pjuarez/Desktop/ssh_key/id_rsa.pub"
  node_pools = {
  node_pools = {
    NODEPOOL1 = {
      cluster_id = "OKE1"
      name       = "node-pool"
      size       = 1
      networking = {
      workers_subnet_id = "SN-PROD-WORKERS-KEY"
        pods_subnet_id    = "SN-PROD-PODS-KEY"
        workers_nsg_ids   = ["NSG-PROD-WORKERS"]
        pods_nsg_ids      = ["NSG-PROD-CP"]
      }
      node_config_details = {
        node_shape = "VM.Standard.E4.Flex"
      }
    }
  }
}
}