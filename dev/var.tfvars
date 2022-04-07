project      = "idea-ind-data-ai-dev"
region       = "asia-south1"
location     = "asia-south1"
zone         = "asia-south1-c"
vpc_name     = "vpc-idea-dev-tf"
routing_mode = "REGIONAL"
subnet_names = ["snet-jumpbox-idea-dev-tf", "snet-app-idea-dev-tf", "snet-data-idea-dev-tf", "snet-webnode-idea-dev-tf", "snet-micronode-idea-dev-tf", "snet-dataproc-idea-dev-tf", "snet-composer1-uscentral1-idea-dev-tf", "snet-vertex-idea-tf"]
subnet_cidrs = ["10.0.0.0/24", "10.0.16.0/20", "10.0.32.0/24", "10.0.33.0/24", "10.0.50.0/23", "10.0.66.0/24", "10.0.110.0/24", "10.0.67.0/24"]


## gke
#project = "idea-industrialized-data-ai"
gke_region         = "asia-south1"
gke_zone           = "asia-south1-c"
gke_location       = "asia-south1"
networking_mode    = "VPC_NATIVE"
initial_node_count = 1
gke = {
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

maintenance_start_time = "2021-06-18T00:00:00Z"
maintenance_end_time   = "2050-01-01T04:00:00Z"
recurrence             = "FREQ=DAILY"


## storage module
#project= "idea-ind-data-ai-dev"
storage_bucket_name_aiml      = "bucket-aiml-idea-tf"
storage_location              = "asia-south1"
storage_bucket_name_migration = "bucket-migration-idea-tf"


##vm module
##vm01
account_id_vm = "vmserviceaccount-tf"
display_name_vm= "vm-serviceaccount-tf"
ssh_public_key_filepath = "ubuntu.pub"
instance_name_aiml      = "myvmonewoneon"
#project                 = "idea-ind-data-ai-dev"
machine_type_aiml = "e2-medium"
vm_zone           = "asia-south1-c"
image_aiml        = "ubuntu-os-cloud/ubuntu-1804-lts"
#network                 = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/global/networks/vpc-idea-dev-tf1"
#subnetwork              = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/regions/us-east1/subnetworks/snet-jumpbox-idea-dev-tf"
##vm02
instance_name_ci_cd = "myvmtwotf"
machine_type_ci_cd  = "e2-medium"
#zone= "us-east1-c"
image_ci_cd = "ubuntu-os-cloud/ubuntu-1804-lts"
# network = "https://www.googleapis.com/compute/v1/projects/idea-industrialized-data-ai/global/networks/vpc-idea-dev-tf1"
#subnetwork = "https://www.googleapis.com/compute/v1/projects/idea-industrialized-data-ai/regions/us-east1/subnetworks/snet-jumpbox-idea-dev-tf"


## composer module
#project= "idea-ind-data-ai-dev"
composer_name                     = "example-composer-env-tf"
account_id_composer               = "serviceidcompser"
composer_region                   = "asia-south1"
composer_node_count               = 3
master_ipv4_cidr_block_composer   = "10.0.121.0/24"
web_server_ipv4_cidr_block        = "10.0.122.0/24"
cloud_sql_ipv4_cidr_block         = "10.0.123.0/24"
composer_zone                     = "asia-south1-c"
composer_machine_type             = "n1-standard-2"
composer_disk_size_gb             = 100
composer_network                  = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/global/networks/vpc-idea-dev-tf1"
composer_subnetwork               = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/regions/asia-south1/subnetworks/snet-composer1-uscentral1-idea-dev-tf"
composer_tags                     = ["ssh-cluster-tag-tf"]
cluster_ipv4_cidr_block_composer  = "10.0.112.0/21"
services_ipv4_cidr_block_composer = "10.0.120.0/24"
composer_image_version            = "composer-1.17.9-airflow-2.1.4"
composer_scheduler_count          = 2
composer_python_version           = 3
composer_database_machine_type    = "db-n1-standard-2"
composer_webserver_machine_type   = "composer-n1-webserver-2"
composer_role_one                 = "roles/composer.worker"
composer_role_two                 = "roles/composer.admin"
### firewall
composer_fw_name          = "dataproctfroletftftgtftf"
composer_fw_network       = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/global/networks/vpc-idea-dev-tf1"
composer_fw_ports         = ["22", "443", "9092", "9021", "8083"]
composer_fw_priority      = 1002
composer_fw_source_ranges = ["10.0.0.0/24"]
composer_fw_target_tags   = ["ssh-cluster-tag-tf"]


### dataproc

dataproc_location = "asia-south1"
dataproc_zone     = "asia-south1-c"
#project = "idea-ind-data-ai-dev"
account_id              = "dataprocserviceaccountnewtf1"
display_name            = "dataproc-tfnewtf"
staging_bucket_name     = "stagifng-dataproc5tfff"
temp_bucket_name        = "temp-daftaprotfffff"
kms_key_ring_name       = "my-ke-tff"
kms_crypto_key_name     = "m-crysptf"
dataproc_cluster_name   = "mycluster-tf-new"
dataproc_region         = "asia-south1"
dataproc_subnetwork     = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/regions/asia-south1/subnetworks/snet-dataproc-idea-dev-tf"
master_num_instance     = 1
master_machine_type     = "n1-standard-8"
master_boot_disk_type   = "pd-ssd"
master_boot_disk_size   = 1024
worker_num_instance     = 2
worker_machine_type     = "n1-standard-8"
worker_min_cpu_platform = "Intel Skylake"
worker_boot_disk_type   = "pd-standard"
worker_boot_disk_size   = 1024
worker_num_local_ssds   = 0
dataproc_image_version  = "1.5.53-ubuntu18"
optional_components     = ["DOCKER", "JUPYTER", "HIVE_WEBHCAT", "ZOOKEEPER","ANACONDA"]
dataproc_role           = "roles/dataproc.worker"
datafusion_role         = "roles/datafusion.runner"
dataproc_tags           = ["ssh-tftag"]

##firewall

dataproc_fw_rule_one_name       = "fwrule11"
dataproc_fw_rule_two_name       = "fwrule22"
dataproc_network                = "https://www.googleapis.com/compute/v1/projects/idea-ind-data-ai-dev/global/networks/vpc-idea-dev-tf1"
dataproc_rule_one_source_ranges = ["10.0.0.0/24"]
dataproc_rule_two_source_ranges = ["10.0.66.0/24"]

##datafusion module##

instance_name                 = "myinstance"
datafusion_region             = "asia-south1"
description                   = "My Data Fusion instance"
instance_type                 = "BASIC"
enable_stackdriver_logging    = false
enable_stackdriver_monitoring = false
private_instance              = true
#network="projects/idea-ind-data-ai-dev/global/networks/vpc-idea-dev-tf11"
ip_allocation = "10.89.48.0/22"
df_version    = "6.5.1"
#account_id="dataprocserviceaccountnewtf"
tags = "dev"

##end of datafusion module##

##sa_module##

role_id_cdf       = "Dataproc_Developer_tf"
title_cdf         = "CDF_Developer_tf"
role_id_abcr      = "Dataproc_Developer_tf1"
title_abcr        = "ABCR_Developer_tf"
role_id_aiml      = "Dataproc_Developer_tf2"
title_aiml        = "AIML_developer_tf"
role_id_migration = "Dataproc_Developer_tf3"
title_migration   = "Migration_Developer_tf"
role_id_ontology  = "Dataproc_Developer_tf4"
title_ontology    = "Ontology_Developer_tf"
role_id_datatrust = "Dataproc_Developer_tf5"
title_datatrust   = "datatrust_developer_tf"
account_id_sa     = ["sacdfdevelopertf", "saabcrdevelopertf", "saaimldevelopertf", "samigrationdevelopertf", "saontologydevelopertf", "sadatatrustdevelopertf"]
display_name_sa   = ["sa_cdf_developer_tf", "sa_abcr_developer_tf", " sa_aiml_developer_tf", "sa_migration_developer_tf", "sa_ontology_developer_tf", "sa_datatrust_developer_tf"]

##end of sa_module##


## vertexai_module

project_id      = "idea-ind-data-ai-dev"
vertexai_region = "asia-south1"
vertexai_zone   = "asia-south1-c"
name_prefix     = "vertex-mlops-dev-tf"
machine_type    = "n1-standard-8"

## end of vertexai_module##



