# oci-cn-quickstart

To Deploy a OKE Cluster ( VCN-native pod networking for OKE CNI ) as a new Dev Platform, change the **KEYS values** for the respective **OCIDs** input.auto.tfvars

* **default_compartment_id** = "<CMP-PLATFORM-DEV-KEY>"
* **vcn_id**                 = "<VCN-DEV-KEY>"
* **api_endpoint_subnet_id** = "<SN-DEV-CP-KEY>"
* **api_endpoint_nsg_ids**   = "<NSG-DEV-CP>"
* **default_ssh_public_key_path** = "<id_rsa.pub>"
* **workers_subnet_id** = "<SN-DEV-WORKERS-KEY>"
* **pods_subnet_id**    = "<SN-DEV-PODS-KEY>"
* **workers_nsg_ids**  = "<NSG-DEV-WORKERS>"
* **pods_nsg_ids**      = "<NSG-DEV-CP>"

For authenticating against the OCI tenancy Terraform needs the following information:

```
"fingerprint": "<PEM key fingerprint>",
"private_key_path": "<path to the private key that matches the fingerprint above>",
"tenancy_id": "<tenancy OCID>",
"user_id": "<user OCID>",
"region": "<home region>",
"private_key_password": "<private key pwd>"
```
[documentation](https://github.com/oci-landing-zones/oci-landing-zone-operating-entities/blob/master/commons/content/terraform_authentication.md)

> [!NOTE]
> Make any additional changes needed to customize your cluster. If you have any questions, please refer to the documentation.

When you're ready, click the 'Next' button

[![Open in Code Editor](https://raw.githubusercontent.com/oracle-devrel/oci-code-editor-samples/main/images/open-in-code-editor.png)](https://cloud.oracle.com/?region=home&cs_repo_url=https://github.com/paolajuarezgomez/oke_cluster_cis.gitbranch=main&cs_readme_path=INIT.md&cs_open_ce=false)

