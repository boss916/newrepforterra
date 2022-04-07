
module "main_vpc" {
  source       = "../modules/vpc_module"
  project      = var.project
  region       = var.region
  zone         = var.zone
  routing_mode = var.routing_mode
  vpc_name     = var.vpc_name
  subnet_names = var.subnet_names
  subnet_cidrs = var.subnet_cidrs
}



module "gke_module" {
  source                   = "../modules/gke_module"
  project                  = var.project
  region                   = var.gke_region
  zone                     = var.gke_zone
  location                 = var.gke_location
  networking_mode          = var.networking_mode
  initial_node_count       = var.initial_node_count
  network                  = module.main_vpc.network_self_link
  subnetwork               = module.main_vpc.subnet_self_link[4]
  for_each                 = var.gke
  cluster_name             = each.value["cluster_name"]
  cluster_ipv4_cidr_block  = each.value["cluster_ipv4_cidr_block"]
  services_ipv4_cidr_block = each.value["services_ipv4_cidr_block"]
  master_ipv4_cidr_block   = each.value["master_ipv4_cidr_block"]
  maintenance_start_time   = var.maintenance_start_time
  maintenance_end_time     = var.maintenance_end_time
  recurrence               = var.recurrence
}

module "storage_bucket_module" {
  source                        = "../modules/storage_bucket_module"
  project                       = var.project
  storage_bucket_name_aiml      = var.storage_bucket_name_aiml
  location                      = var.storage_location
  storage_bucket_name_migration = var.storage_bucket_name_migration

}

module "compute_instance_linux_module" {
  source = "../modules/compute_instance_linux_module"
  ##vm01
  ##vm01
  account_id_vm = "${var.account_id_vm}"
display_name_vm= "${var.display_name_vm}"
  ssh_public_key_filepath = var.ssh_public_key_filepath
  instance_name_aiml      = var.instance_name_aiml
  project                 = var.project
  machine_type_aiml       = var.machine_type_aiml
  zone_vm                 = var.vm_zone
  image_aiml              = var.image_aiml
  network_vm              = module.main_vpc.network_self_link
  subnetwork              = module.main_vpc.subnet_self_link[0]
  ##vm02
  instance_name_ci_cd = var.instance_name_ci_cd
  machine_type_ci_cd  = var.machine_type_ci_cd
  #zone= "us-east1-c"
  image_ci_cd = var.image_ci_cd
  
  
}


module "composer_module" {
  source  = "../modules/composer_module"
  project = var.project
  composer_name       = var.composer_name
  account_id_composer = var.account_id_composer
  region              = var.composer_region
  composer_node_count               = var.composer_node_count
  master_ipv4_cidr_block_composer   = var.master_ipv4_cidr_block_composer
  web_server_ipv4_cidr_block        = var.web_server_ipv4_cidr_block
  cloud_sql_ipv4_cidr_block         = var.cloud_sql_ipv4_cidr_block
  zone                              = var.composer_zone
  composer_machine_type             = var.composer_machine_type
  composer_disk_size_gb             = var.composer_disk_size_gb
  composer_network                  = module.main_vpc.network_self_link
  composer_subnetwork               = module.main_vpc.subnet_self_link[6]
  composer_tags                     = var.composer_tags
  cluster_ipv4_cidr_block_composer  = var.cluster_ipv4_cidr_block_composer
  services_ipv4_cidr_block_composer = var.services_ipv4_cidr_block_composer
  composer_image_version            = var.composer_image_version
  composer_scheduler_count          = var.composer_scheduler_count
  composer_python_version           = var.composer_python_version
  composer_database_machine_type    = var.composer_database_machine_type
  composer_webserver_machine_type   = var.composer_webserver_machine_type
  composer_role_one                 = var.composer_role_one
  composer_role_two                 = var.composer_role_two
  ### firewall
  composer_fw_name          = var.composer_fw_name
  composer_fw_network       = module.main_vpc.network_self_link
  composer_fw_ports         = var.composer_fw_ports
  composer_fw_priority      = var.composer_fw_priority
  composer_fw_source_ranges = var.composer_fw_source_ranges
  composer_fw_target_tags   = var.composer_fw_target_tags

}


/*module "dataproc_module" {
  source              = "../modules/dataproc_module"
  location            = var.dataproc_location
  zone                = var.dataproc_zone
  project             = var.project
  account_id          = var.account_id
  dataproc_subnetwork = module.main_vpc.subnet_self_link[6]
  display_name        = var.display_name
  staging_bucket_name = var.staging_bucket_name
  temp_bucket_name    = var.temp_bucket_name
  #kms_key_ring_name= module.kms_module.kms_key_ring_name
  #kms_crypto_key_name=module.kms_module.kms_crypto_key_name
  dataproc_cluster_name   = var.dataproc_cluster_name
  region                  = var.dataproc_region
  master_num_instance     = var.master_num_instance
  master_machine_type     = var.master_machine_type
  master_boot_disk_type   = var.master_boot_disk_type
  master_boot_disk_size   = var.master_boot_disk_size
  worker_num_instance     = var.worker_num_instance
  worker_machine_type     = var.worker_machine_type
  worker_min_cpu_platform = var.worker_min_cpu_platform
  worker_boot_disk_type   = var.worker_boot_disk_type
  worker_boot_disk_size   = var.worker_boot_disk_size
  worker_num_local_ssds   = var.worker_num_local_ssds
  dataproc_image_version  = var.dataproc_image_version
  optional_components     = var.optional_components
  dataproc_role           = var.dataproc_role
  dataproc_tags           = ["ssh-dataproc-tf-tag"]

  ##firewall

  dataproc_fw_rule_one_name       = var.dataproc_fw_rule_one_name
  dataproc_fw_rule_two_name       = var.dataproc_fw_rule_two_name
  dataproc_network                = module.main_vpc.network_self_link
  dataproc_rule_one_source_ranges = var.dataproc_rule_one_source_ranges
  dataproc_rule_two_source_ranges = var.dataproc_rule_two_source_ranges



}*/

/*module "kms_module" {
source                   = "../modules/kms_module"
kms_key_ring_name = "devtfkey" 
kms_crypto_key_name = "devtfcrypto"
 location = "europe-west1"
 project = "idea-ind-data-ai-dev"
 }*/

module "dataproc_module1" {
  source = "../modules/dataproc_module"

  location            = "${var.dataproc_location}"
  zone                = "${var.dataproc_zone}"
  project             = "${var.project}"
  account_id          = "${var.account_id}"
  display_name        = "${var.display_name}"
  staging_bucket_name = "${var.staging_bucket_name}"
  temp_bucket_name    = "${var.temp_bucket_name}"
  #kms_key_ring_name= "my-ke-tff"
  #kms_crypto_key_name="m-crysptf"
  dataproc_cluster_name   = "${var.dataproc_cluster_name}"
  region                  = "${var.dataproc_region}"
  dataproc_subnetwork     = module.main_vpc.subnet_self_link[5]
  master_num_instance     = "${var.master_num_instance}"
  master_machine_type     = "${var.master_machine_type}"
  master_boot_disk_type   = "${var.master_boot_disk_type}"
  master_boot_disk_size   = "${var.master_boot_disk_size}"
  worker_num_instance     = "${var.worker_num_instance}"
  worker_machine_type     = "${var.worker_machine_type}"
  worker_min_cpu_platform = "${var.worker_min_cpu_platform}"
  worker_boot_disk_type   = "${var.worker_boot_disk_type}"
  worker_boot_disk_size   = "${var.worker_boot_disk_size}"
  worker_num_local_ssds   = "${var.worker_num_local_ssds}"
  dataproc_image_version  = "${var.dataproc_image_version}"
  optional_components     = "${var.optional_components}"
  dataproc_role           = "${var.dataproc_role}"
  datafusion_role         = "${var.datafusion_role}"
  dataproc_tags           = ["ssh-dataproc-tf-tag"]

  ##firewall

  dataproc_fw_rule_one_name       =  "${var.dataproc_fw_rule_one_name}"
  dataproc_fw_rule_two_name       = "${var.dataproc_fw_rule_two_name}"
  dataproc_network                = module.main_vpc.network_self_link
  dataproc_rule_one_source_ranges = "${var.dataproc_rule_one_source_ranges}"
  dataproc_rule_two_source_ranges = "${var.dataproc_rule_two_source_ranges}"

}


module "datafusion" {
  source                        = "../modules/datafusion_module"
  region                        = var.datafusion_region
  project                       = var.project
  description                   = var.description
  instance_name                 = var.instance_name
  instance_type                 = var.instance_type
  enable_stackdriver_logging    = var.enable_stackdriver_logging
  enable_stackdriver_monitoring = var.enable_stackdriver_monitoring
  private_instance              = var.private_instance
  network                       = module.main_vpc.network_id
  ip_allocation                 = var.ip_allocation
  df_version                    = var.df_version
  account_id                    = module.dataproc_module1.sa-email
  tags                          = var.tags
}


module "serviceaccount" {
  source            = "../modules/sa_module"
  project           = var.project
  role_id_cdf       = var.role_id_cdf
  title_cdf         = var.title_cdf
  role_id_abcr      = var.role_id_abcr
  title_abcr        = var.title_abcr
  role_id_aiml      = var.role_id_aiml
  title_aiml        = var.title_aiml
  role_id_migration = var.role_id_migration
  title_migration   = var.title_migration
  role_id_ontology  = var.role_id_ontology
  title_ontology    = var.title_ontology
  role_id_datatrust = var.role_id_datatrust
  title_datatrust   = var.title_datatrust
  account_id_sa     = var.account_id_sa
  display_name_sa   = var.display_name_sa

}
/*module "vertexai_module" {
  source       = "../modules/vertexai_module"
  project_id   = var.project_id
  region       = var.vertexai_region
  zone         = var.vertexai_zone
  name_prefix  = var.name_prefix
  machine_type = var.machine_type
  network_name = module.main_vpc.network_id
  subnet_name  = module.main_vpc.subnet_id[7]
}*/
