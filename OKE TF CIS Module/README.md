Example of deployment:

OKE Cluster (OKE1): of basic type. set with the latest Kubernetes version; with NPN (Native Pod Networking) CNI; with a private API endpoint.

Node Pool (NODEPOOL1): created in the same compartment as the cluster; with the same Kubernetes version as the cluster; with one worker node (it is set by workers_configuration.node_pools.NODEPOOL1.size attribute); node has the "VM.Standard.E4.Flex" shape; node has 16 GB memory and 1 OCPU by default; node boot volume size is 60GB and is terminated when the node is destroyed.

For more info about this module go here