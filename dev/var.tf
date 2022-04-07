variable "zone" {
  description = " zone"
  type        = string
}

variable "region" {
  description = " region"
  type        = string
}

variable "project" {
  description = "The name of project "
  type        = string
}

variable "vpc_name" {
  description = "The name of vpc "
  type        = string
}
variable "routing_mode" {
  description = " routing_mode"
  type        = string
}

variable "subnet_names" {
  description = "The name to use for Subnet "
  type        = list(string)
}

variable "subnet_cidrs" {
  description = "The cidr range for for Subnets"
  type        = list(string)
}




### gke



variable "gke_region" {
  type    = string
  default = ""
}
variable "gke_zone" {
  type    = string
  default = ""
}

variable "gke_location" {
  type    = string
  default = ""
}
variable "networking_mode" {
  type    = string
  default = ""
}

variable "initial_node_count" {
  type = number

}

variable "enable_private_endpoint" {
  type    = bool
  default = true
}
variable "enable_private_nodes" {
  type    = bool
  default = true
}

variable "maintenance_start_time" {
  type    = string
  default = ""
}
variable "maintenance_end_time" {
  type    = string
  default = ""
}
variable "recurrence" {
  type    = string
  default = ""
}

variable "gke" {
  type = map(object({

   
    cluster_name             = string
    cluster_ipv4_cidr_block  = string
    services_ipv4_cidr_block = string
    master_ipv4_cidr_block   = string
  }))
  default = {
    one = {
      cluster_name             = "web-gke"
      cluster_ipv4_cidr_block  = "10.0.56.0/21"
      services_ipv4_cidr_block = "10.0.64.0/24"
      master_ipv4_cidr_block   = "10.0.52.0/28"
    }
    two = {
      cluster_name             = "micro-gke"
      cluster_ipv4_cidr_block  = "10.0.40.0/21"
      services_ipv4_cidr_block = "10.0.48.0/24"
      master_ipv4_cidr_block   = "10.0.34.0/28"
    }
  }
}


## storage module

variable "storage_bucket_name_aiml" {
  type    = string
  default = ""
}
variable "storage_location" {
  type    = string
  default = ""
}

variable "storage_bucket_name_migration" {
  type    = string
  default = ""
}

##vm module
##vm01

variable "account_id_vm" {
  default = ""
}
variable "display_name_vm" {
  default = ""
}
variable "ssh_public_key_filepath" {
  default = ""
}
variable "instance_name_aiml" {
  default = ""
}

variable "machine_type_aiml" {
  default = ""
}
variable "vm_zone" {
  default = ""
}
variable "image_aiml" {
  default = ""
}
variable "network_vm" {
  default = ""
}
variable "subnetwork" {
  default = ""
}

##vm02
variable "instance_name_ci_cd" {
  default = ""
}

variable "machine_type_ci_cd" {
  default = "n1-standard-2"
}

variable "image_ci_cd" {
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}



### composer


variable "composer_name" {
  type    = string
  default = ""
}
variable "account_id_composer" {
  type    = string
  default = ""
}

variable "composer_region" {
  type    = string
  default = ""
}
variable "composer_node_count" {
  type    = number
  default = 3
}
variable "master_ipv4_cidr_block_composer" {
  type    = string
  default = ""
}
variable "web_server_ipv4_cidr_block" {
  type    = string
  default = ""
}
variable "cloud_sql_ipv4_cidr_block" {
  type    = string
  default = ""
}
variable "composer_zone" {
  type    = string
  default = ""
}
variable "composer_machine_type" {
  type    = string
  default = ""
}
variable "composer_disk_size_gb" {
  type    = number
  default = 100
}
variable "composer_network" {
  type    = string
  default = ""
}
variable "composer_subnetwork" {
  type    = string
  default = ""
}
variable "composer_tags" {
  type    = list(string)
  default = [""]
}
variable "cluster_ipv4_cidr_block_composer" {
  type    = string
  default = ""
}
variable "services_ipv4_cidr_block_composer" {
  type    = string
  default = ""
}
variable "composer_image_version" {
  type    = string
  default = ""
}
variable "composer_scheduler_count" {
  type    = number
  default = 2
}
variable "composer_python_version" {
  type    = number
  default = 3
}
variable "composer_database_machine_type" {
  type    = string
  default = ""
}
variable "composer_webserver_machine_type" {
  type    = string
  default = "composer-n1-webserver-2"
}
### firewall
variable "composer_fw_name" {
  type    = string
  default = ""
}
variable "composer_fw_network" {
  type    = string
  default = ""
}
variable "composer_fw_ports" {
  type    = list(string)
  default = [""]
}
variable "composer_fw_priority" {
  type    = number
  default = 1002
}

variable "composer_fw_source_ranges" {
  type    = list(string)
  default = [""]
}
variable "composer_fw_target_tags" {
  type    = list(string)
  default = [""]
}

variable "composer_role_one" {
  type    = string
  default = ""
}

variable "composer_role_two" {
  type    = string
  default = ""
}



### dataproc


variable "dataproc_location" {
  type    = string
  default = ""
}



variable "account_id" {
  type    = string
  default = "dataprocserviceaccountnew"
}
variable "display_name" {
  type    = string
  default = "dataproc-tfnew"
}

variable "staging_bucket_name" {
  type    = string
  default = ""
}

variable "temp_bucket_name" {
  type    = string
  default = "temp-dataproc566g434dfrff"
}
/*variable "kms_key_ring_name" {
  type    = string
  default = ""
}
variable "kms_crypto_key_name" {
  type    = string
  default = ""
}*/
variable "dataproc_cluster_name" {
  type    = string
  default = "mycluster-tf"
}

variable "dataproc_region" {
  type    = string
  default = ""
}


variable "master_num_instance" {
  type    = number
  default = 1
}

variable "master_machine_type" {
  type    = string
  default = "n1-standard-4"
}
variable "master_boot_disk_type" {
  type    = string
  default = "pd-ssd"
}
variable "master_boot_disk_size" {
  type    = number
  default = 1024
}

variable "worker_num_instance" {
  type    = number
  default = 2
}
variable "worker_machine_type" {
  type    = string
  default = "n1-standard-4"
}
variable "worker_min_cpu_platform" {
  type    = string
  default = "Intel Skylake"
}

variable "worker_boot_disk_type" {
  type    = string
  default = "pd-standard"
}
variable "worker_boot_disk_size" {
  type    = number
  default = 1024
}


variable "worker_num_local_ssds" {
  type    = number
  default = 0
}
variable "dataproc_image_version" {
  type    = string
  default = ""
}

variable "optional_components" {
  type    = list(string)
  default = [""]
}
variable "dataproc_zone" {
  type    = string
  default = ""
}
variable "dataproc_subnetwork" {
  type    = string
  default = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/regions/us-east1/subnetworks/snet-dataproc-idea-dev-tf"
}
/*variable "dataproc_tags" {
  type    = list(string)
  default = ["ssh-tftag"]
}*/

variable "dataproc_role" {
  type    = string
  default = "roles/dataproc.worker"
}


variable "dataproc_tags" {
  type    = list(string)
  default = ["ssh-tftag"]
}

##firewall

variable "dataproc_fw_rule_one_name" {
  type    = string
  default = "fwrule1"
}
variable "dataproc_fw_rule_two_name" {
  type    = string
  default = "fwrule2"
}
variable "dataproc_network" {
  type    = string
  default = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/global/networks/vpc-idea-dev-tf1"
}

variable "dataproc_rule_one_source_ranges" {
  type    = list(string)
  default = ["10.0.0.0/24"]
}
variable "dataproc_rule_two_source_ranges" {
  type    = list(string)
  default = ["10.0.66.0/24"]
}



variable "datafusion_role" {
  type    = string
  default = "roles/datafusion.runner"
}


#datafusion_module##

variable "instance_name" {
  description = "name of the instance"
  type        = string
}
variable "datafusion_region" {
  description = " region"
  type        = string
}
variable "description" {
  description = "The description of instance "
  type        = string
  default     = "My Data Fusion instance"
}
variable "instance_type" {
  description = "type of instance"
  type        = string
  default     = "BASIC"
}

variable "enable_stackdriver_logging" {
  type    = bool
  default = true
}
variable "enable_stackdriver_monitoring" {
  type    = bool
  default = true
}

variable "private_instance" {
  type    = bool
  default = true
}


variable "ip_allocation" {
  type    = string
  default = ""
}

variable "df_version" {
  type    = string
  default = "6.3.0"
}


variable "tags" {
  type    = string
  default = "dataprocserviceaccountnew"
}


##sa_module##


variable "role_id_cdf" {
  default = "Dataproc_Developer_tf"

}

variable "title_cdf" {
  default = "CDF_Developer_tf"

}

variable "permissions_cdf" {
  default = ["apigateway.apiconfigs.create", "apigateway.apiconfigs.delete", "apigateway.apiconfigs.get", "apigateway.apiconfigs.getIamPolicy", "apigateway.apiconfigs.list", "apigateway.apiconfigs.setIamPolicy", "apigateway.apiconfigs.update", "apigateway.apis.create", "apigateway.apis.delete", "apigateway.apis.get", "apigateway.apis.getIamPolicy", "apigateway.apis.list", "apigateway.apis.setIamPolicy", "apigateway.apis.update", "apigateway.gateways.create", "apigateway.gateways.delete", "apigateway.gateways.get", "apigateway.gateways.getIamPolicy", "apigateway.gateways.list", "apigateway.gateways.setIamPolicy", "apigateway.gateways.update", "apigateway.locations.get", "apigateway.locations.list", "apigateway.operations.cancel", "apigateway.operations.delete", "apigateway.operations.get", "apigateway.operations.list", "apigee.apiproductattributes.createOrUpdateAll", "apigee.apiproductattributes.delete", "apigee.apiproductattributes.get", "apigee.apiproductattributes.list", "apigee.apiproductattributes.update", "apigee.apiproducts.create", "apigee.apiproducts.delete", "apigee.apiproducts.get", "apigee.apiproducts.list", "apigee.apiproducts.update", "apigee.appkeys.create", "apigee.appkeys.delete", "apigee.appkeys.get", "apigee.appkeys.manage", "apigee.apps.get", "apigee.apps.list", "apigee.archivedeployments.create", "apigee.archivedeployments.delete", "apigee.archivedeployments.download", "apigee.archivedeployments.get", "apigee.archivedeployments.list", "apigee.archivedeployments.update", "apigee.archivedeployments.upload", "apigee.caches.delete", "apigee.caches.list", "apigee.canaryevaluations.create", "apigee.canaryevaluations.get", "apigee.datacollectors.create", "apigee.datacollectors.delete", "apigee.datacollectors.get", "apigee.datacollectors.list", "apigee.datacollectors.update", "apigee.datastores.create", "apigee.datastores.delete", "apigee.datastores.get", "apigee.datastores.list", "apigee.datastores.update", "apigee.deployments.create", "apigee.deployments.delete", "apigee.deployments.get", "apigee.deployments.list", "apigee.deployments.update", "apigee.developerappattributes.createOrUpdateAll", "apigee.developerappattributes.delete", "apigee.developerappattributes.get", "apigee.developerappattributes.list", "apigee.developerappattributes.update", "apigee.developerapps.create", "apigee.developerapps.delete", "apigee.developerapps.get", "apigee.developerapps.list", "apigee.developerapps.manage", "apigee.developerattributes.createOrUpdateAll", "apigee.developerattributes.delete", "apigee.developerattributes.get", "apigee.developerattributes.list", "apigee.developerattributes.update", "apigee.developerbalances.adjust", "apigee.developerbalances.get", "apigee.developerbalances.update", "apigee.developermonetizationconfigs.get", "apigee.developermonetizationconfigs.update", "apigee.developers.create", "apigee.developers.delete", "apigee.developers.get", "apigee.developers.list", "apigee.developers.update", "apigee.developersubscriptions.create", "apigee.developersubscriptions.get", "apigee.developersubscriptions.list", "apigee.developersubscriptions.update", "apigee.envgroupattachments.create", "apigee.envgroupattachments.delete", "apigee.envgroupattachments.get", "apigee.envgroupattachments.list", "apigee.envgroups.create", "apigee.envgroups.delete", "apigee.envgroups.get", "apigee.envgroups.list", "apigee.envgroups.update", "apigee.environments.create", "apigee.environments.delete", "apigee.environments.get", "apigee.environments.getDataLocation", "apigee.environments.getIamPolicy", "apigee.environments.getStats", "apigee.environments.list", "apigee.environments.manageRuntime", "apigee.environments.setIamPolicy", "apigee.environments.update", "apigee.exports.create", "apigee.exports.get", "apigee.exports.list", "apigee.flowhooks.attachSharedFlow", "apigee.flowhooks.detachSharedFlow", "apigee.flowhooks.getSharedFlow", "apigee.flowhooks.list", "apigee.hostqueries.create", "apigee.hostqueries.get", "apigee.hostqueries.list", "apigee.hostsecurityreports.create", "apigee.hostsecurityreports.get", "apigee.hostsecurityreports.list", "apigee.hoststats.get", "apigee.ingressconfigs.get", "apigee.instanceattachments.create", "apigee.instanceattachments.delete", "apigee.instanceattachments.get", "apigee.instanceattachments.list", "apigee.instances.create", "apigee.instances.delete", "apigee.instances.get", "apigee.instances.list", "apigee.instances.reportStatus", "apigee.keystorealiases.create", "apigee.keystorealiases.delete", "apigee.keystorealiases.exportCertificate", "apigee.keystorealiases.generateCSR", "apigee.keystorealiases.get", "apigee.keystorealiases.list", "apigee.keystorealiases.update", "apigee.keystores.create", "apigee.keystores.delete", "apigee.keystores.export", "apigee.keystores.get", "apigee.keystores.list", "apigee.keyvaluemaps.create", "apigee.keyvaluemaps.delete", "apigee.keyvaluemaps.list", "apigee.maskconfigs.get", "apigee.maskconfigs.update", "apigee.operations.get", "apigee.operations.list", "apigee.organizations.create", "apigee.organizations.delete", "apigee.organizations.get", "apigee.organizations.list", "apigee.organizations.update", "apigee.portals.create", "apigee.portals.delete", "apigee.portals.get", "apigee.portals.list", "apigee.portals.update", "apigee.projects.update", "apigee.proxies.create", "apigee.proxies.delete", "apigee.proxies.get", "apigee.proxies.list", "apigee.proxies.update", "apigee.proxyrevisions.delete", "apigee.proxyrevisions.deploy", "apigee.proxyrevisions.get", "apigee.proxyrevisions.list", "apigee.proxyrevisions.undeploy", "apigee.proxyrevisions.update", "apigee.queries.create", "apigee.queries.get", "apigee.queries.list", "apigee.rateplans.create", "apigee.rateplans.delete", "apigee.rateplans.get", "apigee.rateplans.list", "apigee.rateplans.update", "apigee.references.create", "apigee.references.delete", "apigee.references.get", "apigee.references.list", "apigee.references.update", "apigee.reports.create", "apigee.reports.delete", "apigee.reports.get", "apigee.reports.list", "apigee.reports.update", "apigee.resourcefiles.create", "apigee.resourcefiles.delete", "apigee.resourcefiles.get", "apigee.resourcefiles.list", "apigee.resourcefiles.update", "apigee.runtimeconfigs.get", "apigee.securityreports.create", "apigee.securityreports.get", "apigee.securityreports.list", "apigee.sharedflowrevisions.delete", "apigee.sharedflowrevisions.deploy", "apigee.sharedflowrevisions.get", "apigee.sharedflowrevisions.list", "apigee.sharedflowrevisions.undeploy", "apigee.sharedflowrevisions.update", "apigee.sharedflows.create", "apigee.sharedflows.delete", "apigee.sharedflows.get", "apigee.sharedflows.list", "apigee.targetservers.create", "apigee.targetservers.delete", "apigee.targetservers.get", "apigee.targetservers.list", "apigee.targetservers.update", "apigee.tracesessions.create", "apigee.tracesessions.delete", "apigee.tracesessions.get", "apigee.tracesessions.list", "bigquery.bireservations.get", "bigquery.capacityCommitments.get", "bigquery.capacityCommitments.list", "bigquery.config.get", "bigquery.datasets.create", "bigquery.datasets.get", "bigquery.datasets.getIamPolicy", "bigquery.datasets.updateTag", "bigquery.jobs.create", "bigquery.jobs.list", "bigquery.models.create", "bigquery.models.delete", "bigquery.models.export", "bigquery.models.getData", "bigquery.models.getMetadata", "bigquery.models.list", "bigquery.models.updateData", "bigquery.models.updateMetadata", "bigquery.models.updateTag", "bigquery.readsessions.create", "bigquery.readsessions.getData", "bigquery.readsessions.update", "bigquery.reservationAssignments.list", "bigquery.reservationAssignments.search", "bigquery.reservations.get", "bigquery.reservations.list", "bigquery.routines.create", "bigquery.routines.delete", "bigquery.routines.get", "bigquery.routines.list", "bigquery.routines.update", "bigquery.routines.updateTag", "bigquery.savedqueries.get", "bigquery.savedqueries.list", "bigquery.tables.create", "bigquery.tables.createSnapshot", "bigquery.tables.delete", "bigquery.tables.export", "bigquery.tables.get", "bigquery.tables.getData", "bigquery.tables.getIamPolicy", "bigquery.tables.list", "bigquery.tables.restoreSnapshot", "bigquery.tables.update", "bigquery.tables.updateData", "bigquery.tables.updateTag", "bigquery.transfers.get", "cloudnotifications.activities.list", "composer.dags.execute", "composer.dags.get", "composer.dags.list", "composer.environments.get", "composer.environments.list", "composer.imageversions.list", "composer.operations.delete", "composer.operations.get", "composer.operations.list", "compute.instances.get", "compute.instances.getScreenshot", "compute.instances.list", "compute.machineTypes.get", "compute.machineTypes.list", "compute.networks.get", "compute.networks.list", "compute.projects.get", "compute.regions.get", "compute.regions.list", "compute.zones.get", "compute.zones.list", "container.apiServices.get", "container.apiServices.getStatus", "container.apiServices.list", "container.auditSinks.get", "container.auditSinks.list", "container.backendConfigs.get", "container.backendConfigs.list", "container.bindings.get", "container.bindings.list", "container.certificateSigningRequests.get", "container.certificateSigningRequests.getStatus", "container.certificateSigningRequests.list", "container.clusterRoleBindings.get", "container.clusterRoleBindings.list", "container.clusterRoles.get", "container.clusterRoles.list", "container.clusters.get", "container.clusters.list", "container.componentStatuses.get", "container.componentStatuses.list", "container.configMaps.get", "container.configMaps.list", "container.controllerRevisions.get", "container.controllerRevisions.list", "container.cronJobs.get", "container.cronJobs.getStatus", "container.cronJobs.list", "container.csiDrivers.get", "container.csiDrivers.list", "container.csiNodeInfos.get", "container.csiNodeInfos.list", "container.csiNodes.get", "container.csiNodes.list", "container.customResourceDefinitions.get", "container.customResourceDefinitions.getStatus", "container.customResourceDefinitions.list", "container.daemonSets.get", "container.daemonSets.getStatus", "container.daemonSets.list", "container.deployments.get", "container.deployments.getScale", "container.deployments.getStatus", "container.deployments.list", "container.endpointSlices.get", "container.endpointSlices.list", "container.endpoints.get", "container.endpoints.list", "container.events.get", "container.events.list", "container.frontendConfigs.get", "container.frontendConfigs.list", "container.horizontalPodAutoscalers.get", "container.horizontalPodAutoscalers.getStatus", "container.horizontalPodAutoscalers.list", "container.ingresses.get", "container.ingresses.getStatus", "container.ingresses.list", "container.initializerConfigurations.get", "container.initializerConfigurations.list", "container.jobs.get", "container.jobs.getStatus", "container.jobs.list", "container.leases.get", "container.leases.list", "container.limitRanges.get", "container.limitRanges.list", "container.managedCertificates.get", "container.managedCertificates.list", "container.mutatingWebhookConfigurations.get", "container.mutatingWebhookConfigurations.list", "container.namespaces.get", "container.namespaces.getStatus", "container.namespaces.list", "container.networkPolicies.get", "container.networkPolicies.list", "container.nodes.get", "container.nodes.getStatus", "container.nodes.list", "container.operations.get", "container.operations.list", "container.persistentVolumeClaims.get", "container.persistentVolumeClaims.getStatus", "container.persistentVolumeClaims.list", "container.persistentVolumes.get", "container.persistentVolumes.getStatus", "container.persistentVolumes.list", "container.petSets.get", "container.petSets.list", "container.podDisruptionBudgets.get", "container.podDisruptionBudgets.getStatus", "container.podDisruptionBudgets.list", "container.podPresets.get", "container.podPresets.list", "container.podSecurityPolicies.get", "container.podSecurityPolicies.list", "container.podTemplates.get", "container.podTemplates.list", "container.pods.get", "container.pods.getStatus", "container.pods.list", "container.priorityClasses.get", "container.priorityClasses.list", "container.replicaSets.get", "container.replicaSets.getScale", "container.replicaSets.getStatus", "container.replicaSets.list", "container.replicationControllers.get", "container.replicationControllers.getScale", "container.replicationControllers.getStatus", "container.replicationControllers.list", "container.resourceQuotas.get", "container.resourceQuotas.getStatus", "container.resourceQuotas.list", "container.roleBindings.get", "container.roleBindings.list", "container.roles.get", "container.roles.list", "container.runtimeClasses.get", "container.runtimeClasses.list", "container.scheduledJobs.get", "container.scheduledJobs.list", "container.serviceAccounts.get", "container.serviceAccounts.list", "container.services.get", "container.services.getStatus", "container.services.list", "container.statefulSets.get", "container.statefulSets.getScale", "container.statefulSets.getStatus", "container.statefulSets.list", "container.storageClasses.get", "container.storageClasses.list", "container.storageStates.get", "container.storageStates.getStatus", "container.storageStates.list", "container.storageVersionMigrations.get", "container.storageVersionMigrations.getStatus", "container.storageVersionMigrations.list", "container.thirdPartyObjects.get", "container.thirdPartyObjects.list", "container.thirdPartyResources.get", "container.thirdPartyResources.list", "container.tokenReviews.create", "container.updateInfos.get", "container.updateInfos.list", "container.validatingWebhookConfigurations.get", "container.validatingWebhookConfigurations.list", "container.volumeAttachments.get", "container.volumeAttachments.getStatus", "container.volumeAttachments.list", "container.volumeSnapshotClasses.get", "container.volumeSnapshotClasses.list", "container.volumeSnapshotContents.get", "container.volumeSnapshotContents.getStatus", "container.volumeSnapshotContents.list", "container.volumeSnapshots.get", "container.volumeSnapshots.list", "dataflow.jobs.cancel", "dataflow.jobs.create", "dataflow.jobs.get", "dataflow.jobs.list", "dataflow.jobs.snapshot", "dataflow.jobs.updateContents", "dataflow.messages.list", "dataflow.metrics.get", "dataflow.snapshots.delete", "dataflow.snapshots.get", "dataflow.snapshots.list", "datafusion.instances.get", "datafusion.instances.getIamPolicy", "datafusion.instances.list", "datafusion.locations.get", "datafusion.locations.list", "datafusion.operations.cancel", "datafusion.operations.get", "datafusion.operations.list", "dataproc.autoscalingPolicies.get", "dataproc.autoscalingPolicies.list", "dataproc.autoscalingPolicies.use", "dataproc.clusters.get", "dataproc.clusters.list", "dataproc.clusters.use", "dataproc.jobs.cancel", "dataproc.jobs.create", "dataproc.jobs.delete", "dataproc.jobs.get", "dataproc.jobs.list", "dataproc.jobs.update", "dataproc.operations.cancel", "dataproc.operations.delete", "dataproc.operations.get", "dataproc.operations.list", "dataproc.workflowTemplates.create", "dataproc.workflowTemplates.delete", "dataproc.workflowTemplates.get", "dataproc.workflowTemplates.instantiate", "dataproc.workflowTemplates.instantiateInline", "dataproc.workflowTemplates.list", "dataproc.workflowTemplates.update", "firebaseauth.configs.create", "firebaseauth.configs.get", "firebaseauth.configs.getHashConfig", "firebaseauth.configs.update", "firebaseauth.users.create", "firebaseauth.users.createSession", "firebaseauth.users.delete", "firebaseauth.users.get", "firebaseauth.users.sendEmail", "firebaseauth.users.update", "iam.serviceAccounts.actAs", "iam.serviceAccounts.get", "iam.serviceAccounts.list", "monitoring.alertPolicies.get", "monitoring.alertPolicies.list", "monitoring.dashboards.get", "monitoring.dashboards.list", "monitoring.groups.get", "monitoring.groups.list", "monitoring.metricDescriptors.get", "monitoring.metricDescriptors.list", "monitoring.monitoredResourceDescriptors.get", "monitoring.monitoredResourceDescriptors.list", "monitoring.notificationChannelDescriptors.get", "monitoring.notificationChannelDescriptors.list", "monitoring.notificationChannels.get", "monitoring.notificationChannels.list", "monitoring.publicWidgets.get", "monitoring.publicWidgets.list", "monitoring.services.get", "monitoring.services.list", "monitoring.slos.get", "monitoring.slos.list", "monitoring.timeSeries.list", "monitoring.uptimeCheckConfigs.get", "monitoring.uptimeCheckConfigs.list", "opsconfigmonitoring.resourceMetadata.list", "resourcemanager.projects.get", "resourcemanager.projects.getIamPolicy", "secretmanager.locations.get", "secretmanager.locations.list", "secretmanager.secrets.create", "secretmanager.secrets.delete", "secretmanager.secrets.get", "secretmanager.secrets.getIamPolicy", "secretmanager.secrets.list", "secretmanager.secrets.setIamPolicy", "secretmanager.secrets.update", "secretmanager.versions.access", "secretmanager.versions.add", "secretmanager.versions.destroy", "secretmanager.versions.disable", "secretmanager.versions.enable", "secretmanager.versions.get", "secretmanager.versions.list", "servicemanagement.services.get", "serviceusage.quotas.get", "serviceusage.services.get", "serviceusage.services.list", "stackdriver.projects.get", "storage.buckets.get", "storage.buckets.getIamPolicy", "storage.buckets.list", "storage.buckets.listTagBindings", "storage.multipartUploads.abort", "storage.multipartUploads.create", "storage.multipartUploads.list", "storage.multipartUploads.listParts", "storage.objects.create", "storage.objects.delete", "storage.objects.list"]

}

variable "role_id_abcr" {
  default = "Dataproc_Developer_tf1"

}

variable "title_abcr" {
  default = "ABCR_Developer_tf"

}
variable "permissions_abcr" {
  default = ["apigee.apiproductattributes.get", "apigee.apiproductattributes.list", "apigee.apiproducts.get", "apigee.apiproducts.list", "apigee.appkeys.get", "apigee.apps.get", "apigee.apps.list", "apigee.archivedeployments.download", "apigee.archivedeployments.get", "apigee.archivedeployments.list", "apigee.caches.list", "apigee.canaryevaluations.get", "apigee.datacollectors.get", "apigee.datacollectors.list", "apigee.datastores.get", "apigee.datastores.list", "apigee.deployments.get", "apigee.deployments.list", "apigee.developerappattributes.get", "apigee.developerappattributes.list", "apigee.developerapps.get", "apigee.developerapps.list", "apigee.developerattributes.get", "apigee.developerattributes.list", "apigee.developerbalances.get", "apigee.developermonetizationconfigs.get", "apigee.developers.get", "apigee.developers.list", "apigee.developersubscriptions.get", "apigee.developersubscriptions.list", "apigee.envgroupattachments.get", "apigee.envgroupattachments.list", "apigee.envgroups.get", "apigee.envgroups.list", "apigee.environments.get", "apigee.environments.getDataLocation", "apigee.environments.getIamPolicy", "apigee.environments.getStats", "apigee.environments.list", "apigee.exports.get", "apigee.exports.list", "apigee.flowhooks.getSharedFlow", "apigee.flowhooks.list", "apigee.hostqueries.get", "apigee.hostqueries.list", "apigee.hostsecurityreports.get", "apigee.hostsecurityreports.list", "apigee.hoststats.get", "apigee.ingressconfigs.get", "apigee.instanceattachments.get", "apigee.instanceattachments.list", "apigee.instances.get", "apigee.instances.list", "apigee.keystorealiases.get", "apigee.keystorealiases.list", "apigee.keystores.get", "apigee.keystores.list", "apigee.keyvaluemaps.list", "apigee.maskconfigs.get", "apigee.operations.get", "apigee.operations.list", "apigee.organizations.get", "apigee.organizations.list", "apigee.portals.get", "apigee.portals.list", "apigee.proxies.get", "apigee.proxies.list", "apigee.proxyrevisions.get", "apigee.proxyrevisions.list", "apigee.queries.get", "apigee.queries.list", "apigee.rateplans.get", "apigee.rateplans.list", "apigee.references.get", "apigee.references.list", "apigee.reports.get", "apigee.reports.list", "apigee.resourcefiles.get", "apigee.resourcefiles.list", "apigee.runtimeconfigs.get", "apigee.securityreports.get", "apigee.securityreports.list", "apigee.sharedflowrevisions.get", "apigee.sharedflowrevisions.list", "apigee.sharedflows.get", "apigee.sharedflows.list", "apigee.targetservers.get", "apigee.targetservers.list", "apigee.tracesessions.get", "apigee.tracesessions.list", "bigquery.bireservations.get", "bigquery.capacityCommitments.get", "bigquery.capacityCommitments.list", "bigquery.config.get", "bigquery.datasets.create", "bigquery.datasets.get", "bigquery.datasets.getIamPolicy", "bigquery.datasets.updateTag", "bigquery.jobs.create", "bigquery.jobs.list", "bigquery.models.create", "bigquery.models.delete", "bigquery.models.export", "bigquery.models.getData", "bigquery.models.getMetadata", "bigquery.models.list", "bigquery.models.updateData", "bigquery.models.updateMetadata", "bigquery.models.updateTag", "bigquery.readsessions.create", "bigquery.readsessions.getData", "bigquery.readsessions.update", "bigquery.reservationAssignments.list", "bigquery.reservationAssignments.search", "bigquery.reservations.get", "bigquery.reservations.list", "bigquery.routines.create", "bigquery.routines.delete", "bigquery.routines.get", "bigquery.routines.list", "bigquery.routines.update", "bigquery.routines.updateTag", "bigquery.savedqueries.get", "bigquery.savedqueries.list", "bigquery.tables.create", "bigquery.tables.createSnapshot", "bigquery.tables.delete", "bigquery.tables.export", "bigquery.tables.get", "bigquery.tables.getData", "bigquery.tables.getIamPolicy", "bigquery.tables.list", "bigquery.tables.restoreSnapshot", "bigquery.tables.update", "bigquery.tables.updateData", "bigquery.tables.updateTag", "bigquery.transfers.get", "cloudbuild.builds.get", "cloudbuild.builds.list", "cloudfunctions.functions.call", "cloudfunctions.functions.get", "cloudfunctions.functions.invoke", "cloudfunctions.functions.list", "cloudfunctions.functions.sourceCodeGet", "cloudfunctions.functions.sourceCodeSet", "cloudfunctions.functions.update", "cloudfunctions.locations.get", "cloudfunctions.locations.list", "cloudfunctions.operations.get", "cloudfunctions.operations.list", "cloudnotifications.activities.list", "composer.dags.execute", "composer.dags.get", "composer.dags.list", "composer.environments.create", "composer.environments.delete", "composer.environments.get", "composer.environments.list", "composer.environments.update", "composer.imageversions.list", "composer.operations.delete", "composer.operations.get", "composer.operations.list", "compute.instances.get", "compute.instances.getScreenshot", "compute.instances.list", "compute.machineTypes.get", "compute.machineTypes.list", "compute.networks.get", "compute.networks.list", "compute.projects.get", "compute.regions.get", "compute.regions.list", "compute.zones.get", "compute.zones.list", "container.apiServices.get", "container.apiServices.getStatus", "container.apiServices.list", "container.auditSinks.get", "container.auditSinks.list", "container.backendConfigs.get", "container.backendConfigs.list", "container.bindings.get", "container.bindings.list", "container.certificateSigningRequests.get", "container.certificateSigningRequests.getStatus", "container.certificateSigningRequests.list", "container.clusterRoleBindings.get", "container.clusterRoleBindings.list", "container.clusterRoles.get", "container.clusterRoles.list", "container.clusters.get", "container.clusters.list", "container.componentStatuses.get", "container.componentStatuses.list", "container.configMaps.get", "container.configMaps.list", "container.controllerRevisions.get", "container.controllerRevisions.list", "container.cronJobs.get", "container.cronJobs.getStatus", "container.cronJobs.list", "container.csiDrivers.get", "container.csiDrivers.list", "container.csiNodeInfos.get", "container.csiNodeInfos.list", "container.csiNodes.get", "container.csiNodes.list", "container.customResourceDefinitions.get", "container.customResourceDefinitions.getStatus", "container.customResourceDefinitions.list", "container.daemonSets.get", "container.daemonSets.getStatus", "container.daemonSets.list", "container.deployments.get", "container.deployments.getScale", "container.deployments.getStatus", "container.deployments.list", "container.endpointSlices.get", "container.endpointSlices.list", "container.endpoints.get", "container.endpoints.list", "container.events.get", "container.events.list", "container.frontendConfigs.get", "container.frontendConfigs.list", "container.horizontalPodAutoscalers.get", "container.horizontalPodAutoscalers.getStatus", "container.horizontalPodAutoscalers.list", "container.ingresses.get", "container.ingresses.getStatus", "container.ingresses.list", "container.initializerConfigurations.get", "container.initializerConfigurations.list", "container.jobs.get", "container.jobs.getStatus", "container.jobs.list", "container.leases.get", "container.leases.list", "container.limitRanges.get", "container.limitRanges.list", "container.managedCertificates.get", "container.managedCertificates.list", "container.mutatingWebhookConfigurations.get", "container.mutatingWebhookConfigurations.list", "container.namespaces.get", "container.namespaces.getStatus", "container.namespaces.list", "container.networkPolicies.get", "container.networkPolicies.list", "container.nodes.get", "container.nodes.getStatus", "container.nodes.list", "container.operations.get", "container.operations.list", "container.persistentVolumeClaims.get", "container.persistentVolumeClaims.getStatus", "container.persistentVolumeClaims.list", "container.persistentVolumes.get", "container.persistentVolumes.getStatus", "container.persistentVolumes.list", "container.petSets.get", "container.petSets.list", "container.podDisruptionBudgets.get", "container.podDisruptionBudgets.getStatus", "container.podDisruptionBudgets.list", "container.podPresets.get", "container.podPresets.list", "container.podSecurityPolicies.get", "container.podSecurityPolicies.list", "container.podTemplates.get", "container.podTemplates.list", "container.pods.get", "container.pods.getStatus", "container.pods.list", "container.priorityClasses.get", "container.priorityClasses.list", "container.replicaSets.get", "container.replicaSets.getScale", "container.replicaSets.getStatus", "container.replicaSets.list", "container.replicationControllers.get", "container.replicationControllers.getScale", "container.replicationControllers.getStatus", "container.replicationControllers.list", "container.resourceQuotas.get", "container.resourceQuotas.getStatus", "container.resourceQuotas.list", "container.roleBindings.get", "container.roleBindings.list", "container.roles.get", "container.roles.list", "container.runtimeClasses.get", "container.runtimeClasses.list", "container.scheduledJobs.get", "container.scheduledJobs.list", "container.serviceAccounts.get", "container.serviceAccounts.list", "container.services.get", "container.services.getStatus", "container.services.list", "container.statefulSets.get", "container.statefulSets.getScale", "container.statefulSets.getStatus", "container.statefulSets.list", "container.storageClasses.get", "container.storageClasses.list", "container.storageStates.get", "container.storageStates.getStatus", "container.storageStates.list", "container.storageVersionMigrations.get", "container.storageVersionMigrations.getStatus", "container.storageVersionMigrations.list", "container.thirdPartyObjects.get", "container.thirdPartyObjects.list", "container.thirdPartyResources.get", "container.thirdPartyResources.list", "container.tokenReviews.create", "container.updateInfos.get", "container.updateInfos.list", "container.validatingWebhookConfigurations.get", "container.validatingWebhookConfigurations.list", "container.volumeAttachments.get", "container.volumeAttachments.getStatus", "container.volumeAttachments.list", "container.volumeSnapshotClasses.get", "container.volumeSnapshotClasses.list", "container.volumeSnapshotContents.get", "container.volumeSnapshotContents.getStatus", "container.volumeSnapshotContents.list", "container.volumeSnapshots.get", "container.volumeSnapshots.list", "dataproc.autoscalingPolicies.get", "dataproc.autoscalingPolicies.list", "dataproc.autoscalingPolicies.use", "dataproc.clusters.get", "dataproc.clusters.list", "dataproc.clusters.use", "dataproc.jobs.cancel", "dataproc.jobs.create", "dataproc.jobs.delete", "dataproc.jobs.get", "dataproc.jobs.list", "dataproc.jobs.update", "dataproc.operations.cancel", "dataproc.operations.delete", "dataproc.operations.get", "dataproc.operations.list", "dataproc.workflowTemplates.create", "dataproc.workflowTemplates.delete", "dataproc.workflowTemplates.get", "dataproc.workflowTemplates.instantiate", "dataproc.workflowTemplates.instantiateInline", "dataproc.workflowTemplates.list", "dataproc.workflowTemplates.update", "eventarc.locations.get", "eventarc.locations.list", "eventarc.operations.cancel", "eventarc.operations.delete", "eventarc.operations.get", "eventarc.operations.list", "eventarc.triggers.create", "eventarc.triggers.delete", "eventarc.triggers.get", "eventarc.triggers.getIamPolicy", "eventarc.triggers.list", "eventarc.triggers.undelete", "eventarc.triggers.update", "iam.serviceAccounts.getIamPolicy", "iam.serviceAccounts.setIamPolicy", "monitoring.alertPolicies.get", "monitoring.alertPolicies.list", "monitoring.dashboards.get", "monitoring.dashboards.list", "monitoring.groups.get", "monitoring.groups.list", "monitoring.metricDescriptors.get", "monitoring.metricDescriptors.list", "monitoring.monitoredResourceDescriptors.get", "monitoring.monitoredResourceDescriptors.list", "monitoring.notificationChannelDescriptors.get", "monitoring.notificationChannelDescriptors.list", "monitoring.notificationChannels.get", "monitoring.notificationChannels.list", "monitoring.publicWidgets.get", "monitoring.publicWidgets.list", "monitoring.services.get", "monitoring.services.list", "monitoring.slos.get", "monitoring.slos.list", "monitoring.timeSeries.list", "monitoring.uptimeCheckConfigs.get", "monitoring.uptimeCheckConfigs.list", "opsconfigmonitoring.resourceMetadata.list", "recommender.locations.get", "recommender.locations.list", "remotebuildexecution.blobs.get", "resourcemanager.projects.get", "resourcemanager.projects.getIamPolicy", "run.configurations.get", "run.configurations.list", "run.locations.list", "run.revisions.delete", "run.revisions.get", "run.revisions.list", "run.routes.get", "run.routes.list", "run.services.create", "run.services.delete", "run.services.get", "run.services.getIamPolicy", "run.services.list", "run.services.update", "secretmanager.locations.get", "secretmanager.locations.list", "secretmanager.secrets.create", "secretmanager.secrets.delete", "secretmanager.secrets.get", "secretmanager.secrets.getIamPolicy", "secretmanager.secrets.list", "secretmanager.secrets.setIamPolicy", "secretmanager.secrets.update", "secretmanager.versions.access", "secretmanager.versions.add", "secretmanager.versions.destroy", "secretmanager.versions.disable", "secretmanager.versions.enable", "secretmanager.versions.get", "secretmanager.versions.list", "serviceusage.quotas.get", "serviceusage.services.get", "serviceusage.services.list", "stackdriver.projects.get", "storage.buckets.get", "storage.buckets.getIamPolicy", "storage.buckets.list", "storage.buckets.listTagBindings", "storage.multipartUploads.abort", "storage.multipartUploads.create", "storage.multipartUploads.list", "storage.multipartUploads.listParts", "storage.objects.create", "storage.objects.delete", "storage.objects.list"]

}

variable "role_id_aiml" {
  default = "Dataproc_Developer_tf2"

}


variable "title_aiml" {
  default = "AIML_developer_tf"

}

variable "permissions_aiml" {
  default = ["aiplatform.annotationSpecs.create", "aiplatform.annotationSpecs.delete", "aiplatform.annotationSpecs.get", "aiplatform.annotationSpecs.list", "aiplatform.annotationSpecs.update", "aiplatform.annotations.create", "aiplatform.annotations.delete", "aiplatform.annotations.get", "aiplatform.annotations.list", "aiplatform.annotations.update", "aiplatform.artifacts.create", "aiplatform.artifacts.delete", "aiplatform.artifacts.get", "aiplatform.artifacts.list", "aiplatform.artifacts.update", "aiplatform.batchPredictionJobs.cancel", "aiplatform.batchPredictionJobs.create", "aiplatform.batchPredictionJobs.delete", "aiplatform.batchPredictionJobs.get", "aiplatform.batchPredictionJobs.list", "aiplatform.contexts.addContextArtifactsAndExecutions", "aiplatform.contexts.addContextChildren", "aiplatform.contexts.create", "aiplatform.contexts.delete", "aiplatform.contexts.get", "aiplatform.contexts.list", "aiplatform.contexts.queryContextLineageSubgraph", "aiplatform.contexts.update", "aiplatform.customJobs.cancel", "aiplatform.customJobs.create", "aiplatform.customJobs.delete", "aiplatform.customJobs.get", "aiplatform.customJobs.list", "aiplatform.dataItems.create", "aiplatform.dataItems.delete", "aiplatform.dataItems.get", "aiplatform.dataItems.list", "aiplatform.dataItems.update", "aiplatform.dataLabelingJobs.cancel", "aiplatform.dataLabelingJobs.create", "aiplatform.dataLabelingJobs.delete", "aiplatform.dataLabelingJobs.get", "aiplatform.dataLabelingJobs.list", "aiplatform.datasets.create", "aiplatform.datasets.delete", "aiplatform.datasets.export", "aiplatform.datasets.get", "aiplatform.datasets.import", "aiplatform.datasets.list", "aiplatform.datasets.update", "aiplatform.edgeDeploymentJobs.create", "aiplatform.edgeDeploymentJobs.delete", "aiplatform.edgeDeploymentJobs.get", "aiplatform.edgeDeploymentJobs.list", "aiplatform.edgeDeviceDebugInfo.get", "aiplatform.edgeDevices.create", "aiplatform.edgeDevices.delete", "aiplatform.edgeDevices.get", "aiplatform.edgeDevices.list", "aiplatform.edgeDevices.update", "aiplatform.endpoints.create", "aiplatform.endpoints.delete", "aiplatform.endpoints.deploy", "aiplatform.endpoints.explain", "aiplatform.endpoints.get", "aiplatform.endpoints.list", "aiplatform.endpoints.predict", "aiplatform.endpoints.undeploy", "aiplatform.endpoints.update", "aiplatform.entityTypes.create", "aiplatform.entityTypes.delete", "aiplatform.entityTypes.exportFeatureValues", "aiplatform.entityTypes.get", "aiplatform.entityTypes.importFeatureValues", "aiplatform.entityTypes.list", "aiplatform.entityTypes.readFeatureValues", "aiplatform.entityTypes.streamingReadFeatureValues", "aiplatform.entityTypes.update", "aiplatform.entityTypes.writeFeatureValues", "aiplatform.executions.addExecutionEvents", "aiplatform.executions.create", "aiplatform.executions.delete", "aiplatform.executions.get", "aiplatform.executions.list", "aiplatform.executions.queryExecutionInputsAndOutputs", "aiplatform.executions.update", "aiplatform.features.create", "aiplatform.features.delete", "aiplatform.features.get", "aiplatform.features.list", "aiplatform.features.update", "aiplatform.featurestores.batchReadFeatureValues", "aiplatform.featurestores.create", "aiplatform.featurestores.delete", "aiplatform.featurestores.exportFeatures", "aiplatform.featurestores.get", "aiplatform.featurestores.importFeatures", "aiplatform.featurestores.list", "aiplatform.featurestores.readFeatures", "aiplatform.featurestores.update", "aiplatform.featurestores.writeFeatures", "aiplatform.humanInTheLoops.create", "aiplatform.humanInTheLoops.delete", "aiplatform.humanInTheLoops.get", "aiplatform.humanInTheLoops.list", "aiplatform.humanInTheLoops.send", "aiplatform.humanInTheLoops.update", "aiplatform.hyperparameterTuningJobs.cancel", "aiplatform.hyperparameterTuningJobs.create", "aiplatform.hyperparameterTuningJobs.delete", "aiplatform.hyperparameterTuningJobs.get", "aiplatform.hyperparameterTuningJobs.list", "aiplatform.indexEndpoints.create", "aiplatform.indexEndpoints.delete", "aiplatform.indexEndpoints.deploy", "aiplatform.indexEndpoints.get", "aiplatform.indexEndpoints.list", "aiplatform.indexEndpoints.undeploy", "aiplatform.indexEndpoints.update", "aiplatform.indexes.create", "aiplatform.indexes.delete", "aiplatform.indexes.get", "aiplatform.indexes.list", "aiplatform.indexes.update", "aiplatform.locations.get", "aiplatform.locations.list", "aiplatform.metadataSchemas.create", "aiplatform.metadataSchemas.delete", "aiplatform.metadataSchemas.get", "aiplatform.metadataSchemas.list", "aiplatform.metadataStores.create", "aiplatform.metadataStores.delete", "aiplatform.metadataStores.get", "aiplatform.metadataStores.list", "aiplatform.modelDeploymentMonitoringJobs.create", "aiplatform.modelDeploymentMonitoringJobs.delete", "aiplatform.modelDeploymentMonitoringJobs.get", "aiplatform.modelDeploymentMonitoringJobs.list", "aiplatform.modelDeploymentMonitoringJobs.pause", "aiplatform.modelDeploymentMonitoringJobs.resume", "aiplatform.modelDeploymentMonitoringJobs.searchStatsAnomalies", "aiplatform.modelDeploymentMonitoringJobs.update", "aiplatform.modelEvaluationSlices.get", "aiplatform.modelEvaluationSlices.list", "aiplatform.modelEvaluations.exportEvaluatedDataItems", "aiplatform.modelEvaluations.get", "aiplatform.modelEvaluations.list", "aiplatform.models.delete", "aiplatform.models.export", "aiplatform.models.get", "aiplatform.models.list", "aiplatform.models.update", "aiplatform.models.upload", "aiplatform.nasJobs.cancel", "aiplatform.nasJobs.create", "aiplatform.nasJobs.delete", "aiplatform.nasJobs.get", "aiplatform.nasJobs.list", "aiplatform.operations.list", "aiplatform.pipelineJobs.cancel", "aiplatform.pipelineJobs.create", "aiplatform.pipelineJobs.delete", "aiplatform.pipelineJobs.get", "aiplatform.pipelineJobs.list", "aiplatform.specialistPools.create", "aiplatform.specialistPools.delete", "aiplatform.specialistPools.get", "aiplatform.specialistPools.list", "aiplatform.specialistPools.update", "aiplatform.studies.create", "aiplatform.studies.delete", "aiplatform.studies.get", "aiplatform.studies.list", "aiplatform.studies.update", "aiplatform.tensorboardExperiments.create", "aiplatform.tensorboardExperiments.delete", "aiplatform.tensorboardExperiments.get", "aiplatform.tensorboardExperiments.list", "aiplatform.tensorboardExperiments.update", "aiplatform.tensorboardExperiments.write", "aiplatform.tensorboardRuns.batchCreate", "aiplatform.tensorboardRuns.create", "aiplatform.tensorboardRuns.delete", "aiplatform.tensorboardRuns.get", "aiplatform.tensorboardRuns.list", "aiplatform.tensorboardRuns.update", "aiplatform.tensorboardRuns.write", "aiplatform.tensorboardTimeSeries.batchCreate", "aiplatform.tensorboardTimeSeries.batchRead", "aiplatform.tensorboardTimeSeries.create", "aiplatform.tensorboardTimeSeries.delete", "aiplatform.tensorboardTimeSeries.get", "aiplatform.tensorboardTimeSeries.list", "aiplatform.tensorboardTimeSeries.read", "aiplatform.tensorboardTimeSeries.update", "aiplatform.tensorboards.create", "aiplatform.tensorboards.delete", "aiplatform.tensorboards.get", "aiplatform.tensorboards.list", "aiplatform.tensorboards.update", "aiplatform.trainingPipelines.cancel", "aiplatform.trainingPipelines.create", "aiplatform.trainingPipelines.delete", "aiplatform.trainingPipelines.get", "aiplatform.trainingPipelines.list", "aiplatform.trials.create", "aiplatform.trials.delete", "aiplatform.trials.get", "aiplatform.trials.list", "aiplatform.trials.update", "apigee.apiproductattributes.get", "apigee.apiproductattributes.list", "apigee.apiproducts.get", "apigee.apiproducts.list", "apigee.appkeys.get", "apigee.apps.get", "apigee.apps.list", "apigee.archivedeployments.download", "apigee.archivedeployments.get", "apigee.archivedeployments.list", "apigee.caches.list", "apigee.canaryevaluations.get", "apigee.datacollectors.get", "apigee.datacollectors.list", "apigee.datastores.get", "apigee.datastores.list", "apigee.deployments.get", "apigee.deployments.list", "apigee.developerappattributes.get", "apigee.developerappattributes.list", "apigee.developerapps.get", "apigee.developerapps.list", "apigee.developerattributes.get", "apigee.developerattributes.list", "apigee.developerbalances.get", "apigee.developermonetizationconfigs.get", "apigee.developers.get", "apigee.developers.list", "apigee.developersubscriptions.get", "apigee.developersubscriptions.list", "apigee.envgroupattachments.get", "apigee.envgroupattachments.list", "apigee.envgroups.get", "apigee.envgroups.list", "apigee.environments.get", "apigee.environments.getDataLocation", "apigee.environments.getIamPolicy", "apigee.environments.getStats", "apigee.environments.list", "apigee.exports.get", "apigee.exports.list", "apigee.flowhooks.getSharedFlow", "apigee.flowhooks.list", "apigee.hostqueries.get", "apigee.hostqueries.list", "apigee.hostsecurityreports.get", "apigee.hostsecurityreports.list", "apigee.hoststats.get", "apigee.ingressconfigs.get", "apigee.instanceattachments.get", "apigee.instanceattachments.list", "apigee.instances.get", "apigee.instances.list", "apigee.keystorealiases.get", "apigee.keystorealiases.list", "apigee.keystores.get", "apigee.keystores.list", "apigee.keyvaluemaps.list", "apigee.maskconfigs.get", "apigee.operations.get", "apigee.operations.list", "apigee.organizations.get", "apigee.organizations.list", "apigee.portals.get", "apigee.portals.list", "apigee.proxies.get", "apigee.proxies.list", "apigee.proxyrevisions.get", "apigee.proxyrevisions.list", "apigee.queries.get", "apigee.queries.list", "apigee.rateplans.get", "apigee.rateplans.list", "apigee.references.get", "apigee.references.list", "apigee.reports.get", "apigee.reports.list", "apigee.resourcefiles.get", "apigee.resourcefiles.list", "apigee.runtimeconfigs.get", "apigee.securityreports.get", "apigee.securityreports.list", "apigee.sharedflowrevisions.get", "apigee.sharedflowrevisions.list", "apigee.sharedflows.get", "apigee.sharedflows.list", "apigee.targetservers.get", "apigee.targetservers.list", "apigee.tracesessions.get", "apigee.tracesessions.list", "bigquery.bireservations.get", "bigquery.capacityCommitments.get", "bigquery.capacityCommitments.list", "bigquery.config.get", "bigquery.datasets.create", "bigquery.datasets.get", "bigquery.datasets.getIamPolicy", "bigquery.datasets.updateTag", "bigquery.jobs.create", "bigquery.jobs.list", "bigquery.models.create", "bigquery.models.delete", "bigquery.models.export", "bigquery.models.getData", "bigquery.models.getMetadata", "bigquery.models.list", "bigquery.models.updateData", "bigquery.models.updateMetadata", "bigquery.models.updateTag", "bigquery.readsessions.create", "bigquery.readsessions.getData", "bigquery.readsessions.update", "bigquery.reservationAssignments.list", "bigquery.reservationAssignments.search", "bigquery.reservations.get", "bigquery.reservations.list", "bigquery.routines.create", "bigquery.routines.delete", "bigquery.routines.get", "bigquery.routines.list", "bigquery.routines.update", "bigquery.routines.updateTag", "bigquery.savedqueries.get", "bigquery.savedqueries.list", "bigquery.tables.create", "bigquery.tables.createSnapshot", "bigquery.tables.delete", "bigquery.tables.export", "bigquery.tables.get", "bigquery.tables.getData", "bigquery.tables.getIamPolicy", "bigquery.tables.list", "bigquery.tables.restoreSnapshot", "bigquery.tables.update", "bigquery.tables.updateData", "bigquery.tables.updateTag", "bigquery.transfers.get", "cloudnotifications.activities.list", "compute.instances.get", "compute.instances.getScreenshot", "compute.instances.list", "container.apiServices.get", "container.apiServices.getStatus", "container.apiServices.list", "container.auditSinks.get", "container.auditSinks.list", "container.backendConfigs.get", "container.backendConfigs.list", "container.bindings.get", "container.bindings.list", "container.certificateSigningRequests.get", "container.certificateSigningRequests.getStatus", "container.certificateSigningRequests.list", "container.clusterRoleBindings.get", "container.clusterRoleBindings.list", "container.clusterRoles.get", "container.clusterRoles.list", "container.clusters.get", "container.clusters.list", "container.componentStatuses.get", "container.componentStatuses.list", "container.configMaps.get", "container.configMaps.list", "container.controllerRevisions.get", "container.controllerRevisions.list", "container.cronJobs.get", "container.cronJobs.getStatus", "container.cronJobs.list", "container.csiDrivers.get", "container.csiDrivers.list", "container.csiNodeInfos.get", "container.csiNodeInfos.list", "container.csiNodes.get", "container.csiNodes.list", "container.customResourceDefinitions.get", "container.customResourceDefinitions.getStatus", "container.customResourceDefinitions.list", "container.daemonSets.get", "container.daemonSets.getStatus", "container.daemonSets.list", "container.deployments.get", "container.deployments.getScale", "container.deployments.getStatus", "container.deployments.list", "container.endpointSlices.get", "container.endpointSlices.list", "container.endpoints.get", "container.endpoints.list", "container.events.get", "container.events.list", "container.frontendConfigs.get", "container.frontendConfigs.list", "container.horizontalPodAutoscalers.get", "container.horizontalPodAutoscalers.getStatus", "container.horizontalPodAutoscalers.list", "container.ingresses.get", "container.ingresses.getStatus", "container.ingresses.list", "container.initializerConfigurations.get", "container.initializerConfigurations.list", "container.jobs.get", "container.jobs.getStatus", "container.jobs.list", "container.leases.get", "container.leases.list", "container.limitRanges.get", "container.limitRanges.list", "container.managedCertificates.get", "container.managedCertificates.list", "container.mutatingWebhookConfigurations.get", "container.mutatingWebhookConfigurations.list", "container.namespaces.get", "container.namespaces.getStatus", "container.namespaces.list", "container.networkPolicies.get", "container.networkPolicies.list", "container.nodes.get", "container.nodes.getStatus", "container.nodes.list", "container.operations.get", "container.operations.list", "container.persistentVolumeClaims.get", "container.persistentVolumeClaims.getStatus", "container.persistentVolumeClaims.list", "container.persistentVolumes.get", "container.persistentVolumes.getStatus", "container.persistentVolumes.list", "container.petSets.get", "container.petSets.list", "container.podDisruptionBudgets.get", "container.podDisruptionBudgets.getStatus", "container.podDisruptionBudgets.list", "container.podPresets.get", "container.podPresets.list", "container.podSecurityPolicies.get", "container.podSecurityPolicies.list", "container.podTemplates.get", "container.podTemplates.list", "container.pods.get", "container.pods.getStatus", "container.pods.list", "container.priorityClasses.get", "container.priorityClasses.list", "container.replicaSets.get", "container.replicaSets.getScale", "container.replicaSets.getStatus", "container.replicaSets.list", "container.replicationControllers.get", "container.replicationControllers.getScale", "container.replicationControllers.getStatus", "container.replicationControllers.list", "container.resourceQuotas.get", "container.resourceQuotas.getStatus", "container.resourceQuotas.list", "container.roleBindings.get", "container.roleBindings.list", "container.roles.get", "container.roles.list", "container.runtimeClasses.get", "container.runtimeClasses.list", "container.scheduledJobs.get", "container.scheduledJobs.list", "container.serviceAccounts.get", "container.serviceAccounts.list", "container.services.get", "container.services.getStatus", "container.services.list", "container.statefulSets.get", "container.statefulSets.getScale", "container.statefulSets.getStatus", "container.statefulSets.list", "container.storageClasses.get", "container.storageClasses.list", "container.storageStates.get", "container.storageStates.getStatus", "container.storageStates.list", "container.storageVersionMigrations.get", "container.storageVersionMigrations.getStatus", "container.storageVersionMigrations.list", "container.thirdPartyObjects.get", "container.thirdPartyObjects.list", "container.thirdPartyResources.get", "container.thirdPartyResources.list", "container.tokenReviews.create", "container.updateInfos.get", "container.updateInfos.list", "container.validatingWebhookConfigurations.get", "container.validatingWebhookConfigurations.list", "container.volumeAttachments.get", "container.volumeAttachments.getStatus", "container.volumeAttachments.list", "container.volumeSnapshotClasses.get", "container.volumeSnapshotClasses.list", "container.volumeSnapshotContents.get", "container.volumeSnapshotContents.getStatus", "container.volumeSnapshotContents.list", "container.volumeSnapshots.get", "container.volumeSnapshots.list", "iam.serviceAccounts.actAs", "iam.serviceAccounts.get", "iam.serviceAccounts.list", "monitoring.alertPolicies.get", "monitoring.alertPolicies.list", "monitoring.dashboards.get", "monitoring.dashboards.list", "monitoring.groups.get", "monitoring.groups.list", "monitoring.metricDescriptors.get", "monitoring.metricDescriptors.list", "monitoring.monitoredResourceDescriptors.get", "monitoring.monitoredResourceDescriptors.list", "monitoring.notificationChannelDescriptors.get", "monitoring.notificationChannelDescriptors.list", "monitoring.notificationChannels.get", "monitoring.notificationChannels.list", "monitoring.publicWidgets.get", "monitoring.publicWidgets.list", "monitoring.services.get", "monitoring.services.list", "monitoring.slos.get", "monitoring.slos.list", "monitoring.timeSeries.list", "monitoring.uptimeCheckConfigs.get", "monitoring.uptimeCheckConfigs.list", "opsconfigmonitoring.resourceMetadata.list", "resourcemanager.projects.get", "resourcemanager.projects.getIamPolicy", "secretmanager.locations.get", "secretmanager.locations.list", "secretmanager.secrets.create", "secretmanager.secrets.delete", "secretmanager.secrets.get", "secretmanager.secrets.getIamPolicy", "secretmanager.secrets.list", "secretmanager.secrets.setIamPolicy", "secretmanager.secrets.update", "secretmanager.versions.access", "secretmanager.versions.add", "secretmanager.versions.destroy", "secretmanager.versions.disable", "secretmanager.versions.enable", "secretmanager.versions.get", "secretmanager.versions.list", "stackdriver.projects.get", "storage.buckets.get", "storage.buckets.getIamPolicy", "storage.buckets.list", "storage.buckets.listTagBindings", "storage.multipartUploads.abort", "storage.multipartUploads.create", "storage.multipartUploads.list", "storage.multipartUploads.listParts", "storage.objects.create", "storage.objects.delete", "storage.objects.list"]

}



variable "role_id_migration" {
  default = "Dataproc_Developer_tf3"

}
variable "title_migration" {
  default = "Migration_Developer_tf"

}

variable "permissions_migration" {
  default = ["apigee.apiproductattributes.get", "apigee.apiproductattributes.list", "apigee.apiproducts.get", "apigee.apiproducts.list", "apigee.appkeys.get", "apigee.apps.get", "apigee.apps.list", "apigee.archivedeployments.download", "apigee.archivedeployments.get", "apigee.archivedeployments.list", "apigee.caches.list", "apigee.canaryevaluations.get", "apigee.datacollectors.get", "apigee.datacollectors.list", "apigee.datastores.get", "apigee.datastores.list", "apigee.deployments.get", "apigee.deployments.list", "apigee.developerappattributes.get", "apigee.developerappattributes.list", "apigee.developerapps.get", "apigee.developerapps.list", "apigee.developerattributes.get", "apigee.developerattributes.list", "apigee.developerbalances.get", "apigee.developermonetizationconfigs.get", "apigee.developers.get", "apigee.developers.list", "apigee.developersubscriptions.get", "apigee.developersubscriptions.list", "apigee.envgroupattachments.get", "apigee.envgroupattachments.list", "apigee.envgroups.get", "apigee.envgroups.list", "apigee.environments.get", "apigee.environments.getDataLocation", "apigee.environments.getIamPolicy", "apigee.environments.getStats", "apigee.environments.list", "apigee.exports.get", "apigee.exports.list", "apigee.flowhooks.getSharedFlow", "apigee.flowhooks.list", "apigee.hostqueries.get", "apigee.hostqueries.list", "apigee.hostsecurityreports.get", "apigee.hostsecurityreports.list", "apigee.hoststats.get", "apigee.ingressconfigs.get", "apigee.instanceattachments.get", "apigee.instanceattachments.list", "apigee.instances.get", "apigee.instances.list", "apigee.keystorealiases.get", "apigee.keystorealiases.list", "apigee.keystores.get", "apigee.keystores.list", "apigee.keyvaluemaps.list", "apigee.maskconfigs.get", "apigee.operations.get", "apigee.operations.list", "apigee.organizations.get", "apigee.organizations.list", "apigee.portals.get", "apigee.portals.list", "apigee.proxies.get", "apigee.proxies.list", "apigee.proxyrevisions.get", "apigee.proxyrevisions.list", "apigee.queries.get", "apigee.queries.list", "apigee.rateplans.get", "apigee.rateplans.list", "apigee.references.get", "apigee.references.list", "apigee.reports.get", "apigee.reports.list", "apigee.resourcefiles.get", "apigee.resourcefiles.list", "apigee.runtimeconfigs.get", "apigee.securityreports.get", "apigee.securityreports.list", "apigee.sharedflowrevisions.get", "apigee.sharedflowrevisions.list", "apigee.sharedflows.get", "apigee.sharedflows.list", "apigee.targetservers.get", "apigee.targetservers.list", "apigee.tracesessions.get", "apigee.tracesessions.list", "bigquery.bireservations.get", "bigquery.capacityCommitments.get", "bigquery.capacityCommitments.list", "bigquery.config.get", "bigquery.datasets.create", "bigquery.datasets.get", "bigquery.datasets.getIamPolicy", "bigquery.datasets.updateTag", "bigquery.jobs.create", "bigquery.jobs.list", "bigquery.models.create", "bigquery.models.delete", "bigquery.models.export", "bigquery.models.getData", "bigquery.models.getMetadata", "bigquery.models.list", "bigquery.models.updateData", "bigquery.models.updateMetadata", "bigquery.models.updateTag", "bigquery.readsessions.create", "bigquery.readsessions.getData", "bigquery.readsessions.update", "bigquery.reservationAssignments.list", "bigquery.reservationAssignments.search", "bigquery.reservations.get", "bigquery.reservations.list", "bigquery.routines.create", "bigquery.routines.delete", "bigquery.routines.get", "bigquery.routines.list", "bigquery.routines.update", "bigquery.routines.updateTag", "bigquery.savedqueries.get", "bigquery.savedqueries.list", "bigquery.tables.create", "bigquery.tables.createSnapshot", "bigquery.tables.delete", "bigquery.tables.export", "bigquery.tables.get", "bigquery.tables.getData", "bigquery.tables.getIamPolicy", "bigquery.tables.list", "bigquery.tables.restoreSnapshot", "bigquery.tables.update", "bigquery.tables.updateData", "bigquery.tables.updateTag", "bigquery.transfers.get", "cloudnotifications.activities.list", "compute.machineTypes.get", "compute.machineTypes.list", "compute.networks.get", "compute.networks.list", "compute.projects.get", "compute.regions.get", "compute.regions.list", "compute.zones.get", "compute.zones.list", "container.apiServices.get", "container.apiServices.getStatus", "container.apiServices.list", "container.auditSinks.get", "container.auditSinks.list", "container.backendConfigs.get", "container.backendConfigs.list", "container.bindings.get", "container.bindings.list", "container.certificateSigningRequests.get", "container.certificateSigningRequests.getStatus", "container.certificateSigningRequests.list", "container.clusterRoleBindings.get", "container.clusterRoleBindings.list", "container.clusterRoles.get", "container.clusterRoles.list", "container.clusters.get", "container.clusters.list", "container.componentStatuses.get", "container.componentStatuses.list", "container.configMaps.get", "container.configMaps.list", "container.controllerRevisions.get", "container.controllerRevisions.list", "container.cronJobs.get", "container.cronJobs.getStatus", "container.cronJobs.list", "container.csiDrivers.get", "container.csiDrivers.list", "container.csiNodeInfos.get", "container.csiNodeInfos.list", "container.csiNodes.get", "container.csiNodes.list", "container.customResourceDefinitions.get", "container.customResourceDefinitions.getStatus", "container.customResourceDefinitions.list", "container.daemonSets.get", "container.daemonSets.getStatus", "container.daemonSets.list", "container.deployments.get", "container.deployments.getScale", "container.deployments.getStatus", "container.deployments.list", "container.endpointSlices.get", "container.endpointSlices.list", "container.endpoints.get", "container.endpoints.list", "container.events.get", "container.events.list", "container.frontendConfigs.get", "container.frontendConfigs.list", "container.horizontalPodAutoscalers.get", "container.horizontalPodAutoscalers.getStatus", "container.horizontalPodAutoscalers.list", "container.ingresses.get", "container.ingresses.getStatus", "container.ingresses.list", "container.initializerConfigurations.get", "container.initializerConfigurations.list", "container.jobs.get", "container.jobs.getStatus", "container.jobs.list", "container.leases.get", "container.leases.list", "container.limitRanges.get", "container.limitRanges.list", "container.managedCertificates.get", "container.managedCertificates.list", "container.mutatingWebhookConfigurations.get", "container.mutatingWebhookConfigurations.list", "container.namespaces.get", "container.namespaces.getStatus", "container.namespaces.list", "container.networkPolicies.get", "container.networkPolicies.list", "container.nodes.get", "container.nodes.getStatus", "container.nodes.list", "container.operations.get", "container.operations.list", "container.persistentVolumeClaims.get", "container.persistentVolumeClaims.getStatus", "container.persistentVolumeClaims.list", "container.persistentVolumes.get", "container.persistentVolumes.getStatus", "container.persistentVolumes.list", "container.petSets.get", "container.petSets.list", "container.podDisruptionBudgets.get", "container.podDisruptionBudgets.getStatus", "container.podDisruptionBudgets.list", "container.podPresets.get", "container.podPresets.list", "container.podSecurityPolicies.get", "container.podSecurityPolicies.list", "container.podTemplates.get", "container.podTemplates.list", "container.pods.get", "container.pods.getStatus", "container.pods.list", "container.priorityClasses.get", "container.priorityClasses.list", "container.replicaSets.get", "container.replicaSets.getScale", "container.replicaSets.getStatus", "container.replicaSets.list", "container.replicationControllers.get", "container.replicationControllers.getScale", "container.replicationControllers.getStatus", "container.replicationControllers.list", "container.resourceQuotas.get", "container.resourceQuotas.getStatus", "container.resourceQuotas.list", "container.roleBindings.get", "container.roleBindings.list", "container.roles.get", "container.roles.list", "container.runtimeClasses.get", "container.runtimeClasses.list", "container.scheduledJobs.get", "container.scheduledJobs.list", "container.serviceAccounts.get", "container.serviceAccounts.list", "container.services.get", "container.services.getStatus", "container.services.list", "container.statefulSets.get", "container.statefulSets.getScale", "container.statefulSets.getStatus", "container.statefulSets.list", "container.storageClasses.get", "container.storageClasses.list", "container.storageStates.get", "container.storageStates.getStatus", "container.storageStates.list", "container.storageVersionMigrations.get", "container.storageVersionMigrations.getStatus", "container.storageVersionMigrations.list", "container.thirdPartyObjects.get", "container.thirdPartyObjects.list", "container.thirdPartyResources.get", "container.thirdPartyResources.list", "container.tokenReviews.create", "container.updateInfos.get", "container.updateInfos.list", "container.validatingWebhookConfigurations.get", "container.validatingWebhookConfigurations.list", "container.volumeAttachments.get", "container.volumeAttachments.getStatus", "container.volumeAttachments.list", "container.volumeSnapshotClasses.get", "container.volumeSnapshotClasses.list", "container.volumeSnapshotContents.get", "container.volumeSnapshotContents.getStatus", "container.volumeSnapshotContents.list", "container.volumeSnapshots.get", "container.volumeSnapshots.list", "dataflow.jobs.cancel", "dataflow.jobs.create", "dataflow.jobs.get", "dataflow.jobs.list", "dataflow.jobs.snapshot", "dataflow.jobs.updateContents", "dataflow.messages.list", "dataflow.metrics.get", "dataflow.snapshots.delete", "dataflow.snapshots.get", "dataflow.snapshots.list", "datafusion.instances.get", "datafusion.instances.getIamPolicy", "datafusion.instances.list", "datafusion.locations.get", "datafusion.locations.list", "datafusion.operations.cancel", "datafusion.operations.get", "datafusion.operations.list", "dataproc.autoscalingPolicies.get", "dataproc.autoscalingPolicies.list", "dataproc.autoscalingPolicies.use", "dataproc.clusters.get", "dataproc.clusters.list", "dataproc.clusters.use", "dataproc.jobs.cancel", "dataproc.jobs.create", "dataproc.jobs.delete", "dataproc.jobs.get", "dataproc.jobs.list", "dataproc.jobs.update", "dataproc.operations.cancel", "dataproc.operations.delete", "dataproc.operations.get", "dataproc.operations.list", "dataproc.workflowTemplates.create", "dataproc.workflowTemplates.delete", "dataproc.workflowTemplates.get", "dataproc.workflowTemplates.instantiate", "dataproc.workflowTemplates.instantiateInline", "dataproc.workflowTemplates.list", "dataproc.workflowTemplates.update", "monitoring.alertPolicies.get", "monitoring.alertPolicies.list", "monitoring.dashboards.get", "monitoring.dashboards.list", "monitoring.groups.get", "monitoring.groups.list", "monitoring.metricDescriptors.get", "monitoring.metricDescriptors.list", "monitoring.monitoredResourceDescriptors.get", "monitoring.monitoredResourceDescriptors.list", "monitoring.notificationChannelDescriptors.get", "monitoring.notificationChannelDescriptors.list", "monitoring.notificationChannels.get", "monitoring.notificationChannels.list", "monitoring.publicWidgets.get", "monitoring.publicWidgets.list", "monitoring.services.get", "monitoring.services.list", "monitoring.slos.get", "monitoring.slos.list", "monitoring.timeSeries.list", "monitoring.uptimeCheckConfigs.get", "monitoring.uptimeCheckConfigs.list", "opsconfigmonitoring.resourceMetadata.list", "resourcemanager.projects.get", "resourcemanager.projects.getIamPolicy", "secretmanager.locations.get", "secretmanager.locations.list", "secretmanager.secrets.create", "secretmanager.secrets.delete", "secretmanager.secrets.get", "secretmanager.secrets.getIamPolicy", "secretmanager.secrets.list", "secretmanager.secrets.setIamPolicy", "secretmanager.secrets.update", "secretmanager.versions.access", "secretmanager.versions.add", "secretmanager.versions.destroy", "secretmanager.versions.disable", "secretmanager.versions.enable", "secretmanager.versions.get", "secretmanager.versions.list", "stackdriver.projects.get", "storage.buckets.get", "storage.buckets.getIamPolicy", "storage.buckets.list", "storage.buckets.listTagBindings", "storage.multipartUploads.abort", "storage.multipartUploads.create", "storage.multipartUploads.list", "storage.multipartUploads.listParts", "storage.objects.create", "storage.objects.delete", "storage.objects.list"]

}

variable "role_id_ontology" {
  default = "Dataproc_Developer_tf4"

}
variable "title_ontology" {
  default = "Ontology_Developer_tf"

}

variable "permissions_ontology" {
  default = ["apigee.apiproductattributes.get", "apigee.apiproductattributes.list", "apigee.apiproducts.get", "apigee.apiproducts.list", "apigee.appkeys.get", "apigee.apps.get", "apigee.apps.list", "apigee.archivedeployments.download", "apigee.archivedeployments.get", "apigee.archivedeployments.list", "apigee.caches.list", "apigee.canaryevaluations.get", "apigee.datacollectors.get", "apigee.datacollectors.list", "apigee.datastores.get", "apigee.datastores.list", "apigee.deployments.get", "apigee.deployments.list", "apigee.developerappattributes.get", "apigee.developerappattributes.list", "apigee.developerapps.get", "apigee.developerapps.list", "apigee.developerattributes.get", "apigee.developerattributes.list", "apigee.developerbalances.get", "apigee.developermonetizationconfigs.get", "apigee.developers.get", "apigee.developers.list", "apigee.developersubscriptions.get", "apigee.developersubscriptions.list", "apigee.envgroupattachments.get", "apigee.envgroupattachments.list", "apigee.envgroups.get", "apigee.envgroups.list", "apigee.environments.get", "apigee.environments.getDataLocation", "apigee.environments.getIamPolicy", "apigee.environments.getStats", "apigee.environments.list", "apigee.exports.get", "apigee.exports.list", "apigee.flowhooks.getSharedFlow", "apigee.flowhooks.list", "apigee.hostqueries.get", "apigee.hostqueries.list", "apigee.hostsecurityreports.get", "apigee.hostsecurityreports.list", "apigee.hoststats.get", "apigee.ingressconfigs.get", "apigee.instanceattachments.get", "apigee.instanceattachments.list", "apigee.instances.get", "apigee.instances.list", "apigee.keystorealiases.get", "apigee.keystorealiases.list", "apigee.keystores.get", "apigee.keystores.list", "apigee.keyvaluemaps.list", "apigee.maskconfigs.get", "apigee.operations.get", "apigee.operations.list", "apigee.organizations.get", "apigee.organizations.list", "apigee.portals.get", "apigee.portals.list", "apigee.proxies.get", "apigee.proxies.list", "apigee.proxyrevisions.get", "apigee.proxyrevisions.list", "apigee.queries.get", "apigee.queries.list", "apigee.rateplans.get", "apigee.rateplans.list", "apigee.references.get", "apigee.references.list", "apigee.reports.get", "apigee.reports.list", "apigee.resourcefiles.get", "apigee.resourcefiles.list", "apigee.runtimeconfigs.get", "apigee.securityreports.get", "apigee.securityreports.list", "apigee.sharedflowrevisions.get", "apigee.sharedflowrevisions.list", "apigee.sharedflows.get", "apigee.sharedflows.list", "apigee.targetservers.get", "apigee.targetservers.list", "apigee.tracesessions.get", "apigee.tracesessions.list", "cloudnotifications.activities.list", "compute.instances.get", "compute.instances.getScreenshot", "compute.instances.list", "container.apiServices.get", "container.apiServices.getStatus", "container.apiServices.list", "container.auditSinks.get", "container.auditSinks.list", "container.backendConfigs.get", "container.backendConfigs.list", "container.bindings.get", "container.bindings.list", "container.certificateSigningRequests.get", "container.certificateSigningRequests.getStatus", "container.certificateSigningRequests.list", "container.clusterRoleBindings.get", "container.clusterRoleBindings.list", "container.clusterRoles.get", "container.clusterRoles.list", "container.clusters.get", "container.clusters.list", "container.componentStatuses.get", "container.componentStatuses.list", "container.configMaps.get", "container.configMaps.list", "container.controllerRevisions.get", "container.controllerRevisions.list", "container.cronJobs.get", "container.cronJobs.getStatus", "container.cronJobs.list", "container.csiDrivers.get", "container.csiDrivers.list", "container.csiNodeInfos.get", "container.csiNodeInfos.list", "container.csiNodes.get", "container.csiNodes.list", "container.customResourceDefinitions.get", "container.customResourceDefinitions.getStatus", "container.customResourceDefinitions.list", "container.daemonSets.get", "container.daemonSets.getStatus", "container.daemonSets.list", "container.deployments.get", "container.deployments.getScale", "container.deployments.getStatus", "container.deployments.list", "container.endpointSlices.get", "container.endpointSlices.list", "container.endpoints.get", "container.endpoints.list", "container.events.get", "container.events.list", "container.frontendConfigs.get", "container.frontendConfigs.list", "container.horizontalPodAutoscalers.get", "container.horizontalPodAutoscalers.getStatus", "container.horizontalPodAutoscalers.list", "container.ingresses.get", "container.ingresses.getStatus", "container.ingresses.list", "container.initializerConfigurations.get", "container.initializerConfigurations.list", "container.jobs.get", "container.jobs.getStatus", "container.jobs.list", "container.leases.get", "container.leases.list", "container.limitRanges.get", "container.limitRanges.list", "container.managedCertificates.get", "container.managedCertificates.list", "container.mutatingWebhookConfigurations.get", "container.mutatingWebhookConfigurations.list", "container.namespaces.get", "container.namespaces.getStatus", "container.namespaces.list", "container.networkPolicies.get", "container.networkPolicies.list", "container.nodes.get", "container.nodes.getStatus", "container.nodes.list", "container.operations.get", "container.operations.list", "container.persistentVolumeClaims.get", "container.persistentVolumeClaims.getStatus", "container.persistentVolumeClaims.list", "container.persistentVolumes.get", "container.persistentVolumes.getStatus", "container.persistentVolumes.list", "container.petSets.get", "container.petSets.list", "container.podDisruptionBudgets.get", "container.podDisruptionBudgets.getStatus", "container.podDisruptionBudgets.list", "container.podPresets.get", "container.podPresets.list", "container.podSecurityPolicies.get", "container.podSecurityPolicies.list", "container.podTemplates.get", "container.podTemplates.list", "container.pods.get", "container.pods.getStatus", "container.pods.list", "container.priorityClasses.get", "container.priorityClasses.list", "container.replicaSets.get", "container.replicaSets.getScale", "container.replicaSets.getStatus", "container.replicaSets.list", "container.replicationControllers.get", "container.replicationControllers.getScale", "container.replicationControllers.getStatus", "container.replicationControllers.list", "container.resourceQuotas.get", "container.resourceQuotas.getStatus", "container.resourceQuotas.list", "container.roleBindings.get", "container.roleBindings.list", "container.roles.get", "container.roles.list", "container.runtimeClasses.get", "container.runtimeClasses.list", "container.scheduledJobs.get", "container.scheduledJobs.list", "container.serviceAccounts.get", "container.serviceAccounts.list", "container.services.get", "container.services.getStatus", "container.services.list", "container.statefulSets.get", "container.statefulSets.getScale", "container.statefulSets.getStatus", "container.statefulSets.list", "container.storageClasses.get", "container.storageClasses.list", "container.storageStates.get", "container.storageStates.getStatus", "container.storageStates.list", "container.storageVersionMigrations.get", "container.storageVersionMigrations.getStatus", "container.storageVersionMigrations.list", "container.thirdPartyObjects.get", "container.thirdPartyObjects.list", "container.thirdPartyResources.get", "container.thirdPartyResources.list", "container.tokenReviews.create", "container.updateInfos.get", "container.updateInfos.list", "container.validatingWebhookConfigurations.get", "container.validatingWebhookConfigurations.list", "container.volumeAttachments.get", "container.volumeAttachments.getStatus", "container.volumeAttachments.list", "container.volumeSnapshotClasses.get", "container.volumeSnapshotClasses.list", "container.volumeSnapshotContents.get", "container.volumeSnapshotContents.getStatus", "container.volumeSnapshotContents.list", "container.volumeSnapshots.get", "container.volumeSnapshots.list", "monitoring.alertPolicies.get", "monitoring.alertPolicies.list", "monitoring.dashboards.get", "monitoring.dashboards.list", "monitoring.groups.get", "monitoring.groups.list", "monitoring.metricDescriptors.get", "monitoring.metricDescriptors.list", "monitoring.monitoredResourceDescriptors.get", "monitoring.monitoredResourceDescriptors.list", "monitoring.notificationChannelDescriptors.get", "monitoring.notificationChannelDescriptors.list", "monitoring.notificationChannels.get", "monitoring.notificationChannels.list", "monitoring.publicWidgets.get", "monitoring.publicWidgets.list", "monitoring.services.get", "monitoring.services.list", "monitoring.slos.get", "monitoring.slos.list", "monitoring.timeSeries.list", "monitoring.uptimeCheckConfigs.get", "monitoring.uptimeCheckConfigs.list", "opsconfigmonitoring.resourceMetadata.list", "resourcemanager.projects.get", "resourcemanager.projects.getIamPolicy", "secretmanager.locations.get", "secretmanager.locations.list", "secretmanager.secrets.create", "secretmanager.secrets.delete", "secretmanager.secrets.get", "secretmanager.secrets.getIamPolicy", "secretmanager.secrets.list", "secretmanager.secrets.setIamPolicy", "secretmanager.secrets.update", "secretmanager.versions.access", "secretmanager.versions.add", "secretmanager.versions.destroy", "secretmanager.versions.disable", "secretmanager.versions.enable", "secretmanager.versions.get", "secretmanager.versions.list", "stackdriver.projects.get", "storage.buckets.get", "storage.buckets.getIamPolicy", "storage.buckets.list", "storage.buckets.listTagBindings", "storage.buckets.setIamPolicy", "storage.multipartUploads.abort", "storage.multipartUploads.create", "storage.multipartUploads.list", "storage.multipartUploads.listParts", "storage.objects.create", "storage.objects.delete", "storage.objects.list"]

}

variable "role_id_datatrust" {
  default = "Dataproc_Developer_tf5"

}

variable "title_datatrust" {
  default = "datatrust_developer_tf"

}

variable "permissions_datatrust" {
  default = ["bigquery.bireservations.get", "bigquery.capacityCommitments.get", "bigquery.capacityCommitments.list", "bigquery.config.get", "bigquery.connections.get", "bigquery.connections.updateTag", "bigquery.datasets.create", "bigquery.datasets.get", "bigquery.datasets.getIamPolicy", "bigquery.datasets.updateTag", "bigquery.jobs.create", "bigquery.jobs.list", "bigquery.models.create", "bigquery.models.delete", "bigquery.models.export", "bigquery.models.getData", "bigquery.models.getMetadata", "bigquery.models.list", "bigquery.models.updateData", "bigquery.models.updateMetadata", "bigquery.models.updateTag", "bigquery.readsessions.create", "bigquery.readsessions.getData", "bigquery.readsessions.update", "bigquery.reservationAssignments.list", "bigquery.reservationAssignments.search", "bigquery.reservations.get", "bigquery.reservations.list", "bigquery.routines.create", "bigquery.routines.delete", "bigquery.routines.get", "bigquery.routines.list", "bigquery.routines.update", "bigquery.routines.updateTag", "bigquery.savedqueries.get", "bigquery.savedqueries.list", "bigquery.tables.create", "bigquery.tables.createSnapshot", "bigquery.tables.delete", "bigquery.tables.export", "bigquery.tables.get", "bigquery.tables.getData", "bigquery.tables.getIamPolicy", "bigquery.tables.list", "bigquery.tables.restoreSnapshot", "bigquery.tables.update", "bigquery.tables.updateData", "bigquery.tables.updateTag", "bigquery.transfers.get", "composer.dags.execute", "composer.dags.get", "composer.dags.list", "composer.environments.get", "composer.environments.list", "composer.imageversions.list", "composer.operations.delete", "composer.operations.get", "composer.operations.list", "compute.instances.get", "compute.instances.getScreenshot", "compute.instances.list", "compute.machineTypes.get", "compute.machineTypes.list", "compute.networks.get", "compute.networks.list", "compute.projects.get", "compute.regions.get", "compute.regions.list", "compute.zones.get", "compute.zones.list", "container.apiServices.get", "container.apiServices.getStatus", "container.apiServices.list", "container.auditSinks.get", "container.auditSinks.list", "container.backendConfigs.get", "container.backendConfigs.list", "container.bindings.get", "container.bindings.list", "container.certificateSigningRequests.get", "container.certificateSigningRequests.getStatus", "container.certificateSigningRequests.list", "container.clusterRoleBindings.get", "container.clusterRoleBindings.list", "container.clusterRoles.get", "container.clusterRoles.list", "container.clusters.get", "container.clusters.list", "container.componentStatuses.get", "container.componentStatuses.list", "container.configMaps.get", "container.configMaps.list", "container.controllerRevisions.get", "container.controllerRevisions.list", "container.cronJobs.get", "container.cronJobs.getStatus", "container.cronJobs.list", "container.csiDrivers.get", "container.csiDrivers.list", "container.csiNodeInfos.get", "container.csiNodeInfos.list", "container.csiNodes.get", "container.csiNodes.list", "container.customResourceDefinitions.get", "container.customResourceDefinitions.getStatus", "container.customResourceDefinitions.list", "container.daemonSets.get", "container.daemonSets.getStatus", "container.daemonSets.list", "container.deployments.get", "container.deployments.getScale", "container.deployments.getStatus", "container.deployments.list", "container.endpointSlices.get", "container.endpointSlices.list", "container.endpoints.get", "container.endpoints.list", "container.events.get", "container.events.list", "container.frontendConfigs.get", "container.frontendConfigs.list", "container.horizontalPodAutoscalers.get", "container.horizontalPodAutoscalers.getStatus", "container.horizontalPodAutoscalers.list", "container.ingresses.get", "container.ingresses.getStatus", "container.ingresses.list", "container.initializerConfigurations.get", "container.initializerConfigurations.list", "container.jobs.get", "container.jobs.getStatus", "container.jobs.list", "container.leases.get", "container.leases.list", "container.limitRanges.get", "container.limitRanges.list", "container.managedCertificates.get", "container.managedCertificates.list", "container.mutatingWebhookConfigurations.get", "container.mutatingWebhookConfigurations.list", "container.namespaces.get", "container.namespaces.getStatus", "container.namespaces.list", "container.networkPolicies.get", "container.networkPolicies.list", "container.nodes.get", "container.nodes.getStatus", "container.nodes.list", "container.operations.get", "container.operations.list", "container.persistentVolumeClaims.get", "container.persistentVolumeClaims.getStatus", "container.persistentVolumeClaims.list", "container.persistentVolumes.get", "container.persistentVolumes.getStatus", "container.persistentVolumes.list", "container.petSets.get", "container.petSets.list", "container.podDisruptionBudgets.get", "container.podDisruptionBudgets.getStatus", "container.podDisruptionBudgets.list", "container.podPresets.get", "container.podPresets.list", "container.podSecurityPolicies.get", "container.podSecurityPolicies.list", "container.podTemplates.get", "container.podTemplates.list", "container.pods.get", "container.pods.getStatus", "container.pods.list", "container.priorityClasses.get", "container.priorityClasses.list", "container.replicaSets.get", "container.replicaSets.getScale", "container.replicaSets.getStatus", "container.replicaSets.list", "container.replicationControllers.get", "container.replicationControllers.getScale", "container.replicationControllers.getStatus", "container.replicationControllers.list", "container.resourceQuotas.get", "container.resourceQuotas.getStatus", "container.resourceQuotas.list", "container.roleBindings.get", "container.roleBindings.list", "container.roles.get", "container.roles.list", "container.runtimeClasses.get", "container.runtimeClasses.list", "container.scheduledJobs.get", "container.scheduledJobs.list", "container.serviceAccounts.get", "container.serviceAccounts.list", "container.services.get", "container.services.getStatus", "container.services.list", "container.statefulSets.get", "container.statefulSets.getScale", "container.statefulSets.getStatus", "container.statefulSets.list", "container.storageClasses.get", "container.storageClasses.list", "container.storageStates.get", "container.storageStates.getStatus", "container.storageStates.list", "container.storageVersionMigrations.get", "container.storageVersionMigrations.getStatus", "container.storageVersionMigrations.list", "container.thirdPartyObjects.get", "container.thirdPartyObjects.list", "container.thirdPartyResources.get", "container.thirdPartyResources.list", "container.tokenReviews.create", "container.updateInfos.get", "container.updateInfos.list", "container.validatingWebhookConfigurations.get", "container.validatingWebhookConfigurations.list", "container.volumeAttachments.get", "container.volumeAttachments.getStatus", "container.volumeAttachments.list", "container.volumeSnapshotClasses.get", "container.volumeSnapshotClasses.list", "container.volumeSnapshotContents.get", "container.volumeSnapshotContents.getStatus", "container.volumeSnapshotContents.list", "container.volumeSnapshots.get", "container.volumeSnapshots.list", "datacatalog.categories.getIamPolicy", "datacatalog.categories.setIamPolicy", "datacatalog.entries.create", "datacatalog.entries.delete", "datacatalog.entries.get", "datacatalog.entries.getIamPolicy", "datacatalog.entries.list", "datacatalog.entries.setIamPolicy", "datacatalog.entries.update", "datacatalog.entries.updateTag", "datacatalog.entryGroups.create", "datacatalog.entryGroups.delete", "datacatalog.entryGroups.get", "datacatalog.entryGroups.getIamPolicy", "datacatalog.entryGroups.list", "datacatalog.entryGroups.setIamPolicy", "datacatalog.entryGroups.update", "datacatalog.tagTemplates.create", "datacatalog.tagTemplates.delete", "datacatalog.tagTemplates.get", "datacatalog.tagTemplates.getIamPolicy", "datacatalog.tagTemplates.getTag", "datacatalog.tagTemplates.setIamPolicy", "datacatalog.tagTemplates.update", "datacatalog.tagTemplates.use", "datacatalog.taxonomies.create", "datacatalog.taxonomies.delete", "datacatalog.taxonomies.get", "dataflow.jobs.cancel", "dataflow.jobs.create", "dataflow.jobs.get", "dataflow.jobs.list", "dataflow.jobs.snapshot", "dataflow.jobs.updateContents", "dataflow.messages.list", "dataflow.metrics.get", "dataflow.snapshots.delete", "dataflow.snapshots.get", "dataflow.snapshots.list", "datafusion.instances.get", "datafusion.instances.getIamPolicy", "datafusion.instances.list", "datafusion.locations.get", "datafusion.locations.list", "datafusion.operations.cancel", "datafusion.operations.get", "datafusion.operations.list", "dataproc.autoscalingPolicies.get", "dataproc.autoscalingPolicies.list", "dataproc.autoscalingPolicies.use", "dataproc.clusters.get", "dataproc.clusters.list", "dataproc.clusters.use", "dataproc.jobs.cancel", "dataproc.jobs.create", "dataproc.jobs.delete", "dataproc.jobs.get", "dataproc.jobs.list", "dataproc.jobs.update", "dataproc.operations.cancel", "dataproc.operations.delete", "dataproc.operations.get", "dataproc.operations.list", "dataproc.workflowTemplates.create", "dataproc.workflowTemplates.delete", "dataproc.workflowTemplates.get", "dataproc.workflowTemplates.instantiate", "dataproc.workflowTemplates.instantiateInline", "dataproc.workflowTemplates.list", "dataproc.workflowTemplates.update", "dlp.analyzeRiskTemplates.create", "dlp.analyzeRiskTemplates.delete", "dlp.analyzeRiskTemplates.get", "dlp.analyzeRiskTemplates.list", "dlp.analyzeRiskTemplates.update", "dlp.columnDataProfiles.get", "dlp.columnDataProfiles.list", "dlp.deidentifyTemplates.create", "dlp.deidentifyTemplates.delete", "dlp.deidentifyTemplates.get", "dlp.deidentifyTemplates.list", "dlp.deidentifyTemplates.update", "dlp.estimates.cancel", "dlp.estimates.create", "dlp.estimates.delete", "dlp.estimates.get", "dlp.estimates.list", "dlp.inspectFindings.list", "dlp.inspectTemplates.create", "dlp.inspectTemplates.delete", "dlp.inspectTemplates.get", "dlp.inspectTemplates.list", "dlp.inspectTemplates.update", "dlp.jobTriggers.create", "dlp.jobTriggers.delete", "dlp.jobTriggers.get", "dlp.jobTriggers.hybridInspect", "dlp.jobTriggers.list", "dlp.jobTriggers.update", "dlp.jobs.cancel", "dlp.jobs.create", "dlp.jobs.delete", "dlp.jobs.get", "dlp.jobs.hybridInspect", "dlp.jobs.list", "dlp.kms.encrypt", "dlp.projectDataProfiles.get", "dlp.projectDataProfiles.list", "dlp.storedInfoTypes.create", "dlp.storedInfoTypes.delete", "dlp.storedInfoTypes.get", "dlp.storedInfoTypes.list", "dlp.storedInfoTypes.update", "dlp.tableDataProfiles.get", "dlp.tableDataProfiles.list", "resourcemanager.projects.get", "secretmanager.locations.get", "secretmanager.locations.list", "secretmanager.secrets.create", "secretmanager.secrets.delete", "secretmanager.secrets.get", "secretmanager.secrets.getIamPolicy", "secretmanager.secrets.list", "secretmanager.secrets.setIamPolicy", "secretmanager.secrets.update", "secretmanager.versions.access", "secretmanager.versions.add", "secretmanager.versions.destroy", "secretmanager.versions.disable", "secretmanager.versions.enable", "secretmanager.versions.get", "secretmanager.versions.list", "serviceusage.quotas.get", "serviceusage.services.get", "serviceusage.services.list", "serviceusage.services.use", "storage.buckets.get", "storage.buckets.getIamPolicy", "storage.buckets.list", "storage.buckets.listTagBindings", "storage.multipartUploads.abort", "storage.multipartUploads.create", "storage.multipartUploads.list", "storage.multipartUploads.listParts", "storage.objects.create", "storage.objects.delete", "storage.objects.list"]

}

variable "account_id_sa" {
  type    = list(string)
  default = ["sacdfdevelopertf", "saabcrdevelopertf", "saaimldevelopertf", "samigrationdevelopertf", "saontologydevelopertf", "sadatatrustdevelopertf"]
}

variable "display_name_sa" {
  type    = list(string)
  default = ["sa_cdf_developer_tf", "sa_abcr_developer_tf", " sa_aiml_developer_tf", "sa_migration_developer_tf", "sa_ontology_developer_tf", "sa_datatrust_developer_tf"]
}

##vertexai_module##


variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "vertexai_region" {
  description = "The region for the GCS bucket and Artifact Registry"
  type        = string
  default     = null
}

variable "vertexai_zone" {
  description = "The zone for a Vertex Notebook instance"
  type        = string
}

variable "name_prefix" {
  description = "The name prefix to add to the resource names"
  type        = string
}

variable "machine_type" {
  description = "The Notebook instance's machine type"
  type        = string
}


variable "boot_disk_size" {
  description = "The size of the boot disk"
  default     = 200
}

variable "image_family" {
  description = "A Deep Learning image family for the Notebook instance"
  type        = string
  default     = "common-cpu"
}

variable "gpu_type" {
  description = "A GPU type for the Notebook instance"
  type        = string
  default     = null
}

variable "gpu_count" {
  description = "A GPU count for the Notebook instance"
  type        = string
  default     = null
}

variable "install_gpu_driver" {
  description = "Whether to install GPU driver"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Whether to remove the bucket on destroy"
  type        = bool
  default     = false
}

variable "training_sa_roles" {
  description = "The roles to assign to the Vertex Training service account"
  default = [
    "storage.admin",
    "aiplatform.user",
    "bigquery.admin"
  ]
}

variable "pipelines_sa_roles" {
  description = "The roles to assign to the Vertex Pipelines service account"
  default = [
    "storage.admin",
    "bigquery.admin",
    "aiplatform.user"
  ]
}

variable "training_sa_name" {
  description = "Vertex training service account name."
  default     = "training-sa-tf"
}

variable "pipelines_sa_name" {
  description = "Vertex pipelines service account name."
  default     = "pipelines-sa-tf"
}
