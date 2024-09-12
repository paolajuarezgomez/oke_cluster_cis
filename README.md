# oci-cn-quickstart

To Deploy a OKE Cluster ( VCN-native pod networking for OKE CNI ) as a new Dev Platform, change the **KEYS values** for the respective **OCIDs** in oke.tf file (oke folder)


  * **vcn_id**="\<CMP-PLATFORM-DEV-KEY>"

  * **network_compartment_id** = "\<CMP-LZP-D-NETWORK-KEY>"

  * **subnets** = {
  cp       = { id = "\<SN-DEV-CP-KEY>" }
  int_lb   = { id = "\<SN-DEV-PRIV-LB-KEY>" }
  workers  = { id = "\<SN-DEV-WORKERS-KEY>" }
  pods     = { id = "\<SN-DEV-PODS-KEY>"}
  }

  * **nsgs** = {
  cp       = { id = "\<NSG-DEV-CP-KEY>" }
  int_lb   = { id = "\<NSG-DEV-PRIV-LB-KEY>" }
  workers  = { id = "\<NSG-DEV-WORKERS-KEY>" }
  pods     = { id = "\<NSG-DEV-PODS-KEY>" }
  }

* **nat_route_table_id** = ""

> [!NOTE]
> Make any additional changes needed to customize your cluster. If you have any questions, please refer to the documentation.

When you're ready, click the 'Next' button

[![Open in Code Editor](https://raw.githubusercontent.com/oracle-devrel/oci-code-editor-samples/main/images/open-in-code-editor.png)](https://cloud.oracle.com/?region=home&cs_repo_url=https://github.com/paolajuarezgomez/oke_cluster_cis.git&cs_branch=main&cs_readme_path=INIT.md&cs_open_ce=false)
