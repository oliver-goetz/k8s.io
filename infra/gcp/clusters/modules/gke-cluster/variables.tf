/**
 * Copyright 2020 The Kubernetes Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_name" {
  description = "The name of the project in which to provision resources."
  type        = string
}

variable "cluster_name" {
  description = "The name of the cluster"
  type        = string
}

variable "cluster_location" {
  description = "The GCP location (region or zone) where the cluster should be created"
  type        = string
}

variable "bigquery_location" {
  description = "The bigquery specific location where the dataset should be created"
  type        = string
}

variable "is_prod_cluster" {
  description = "If this is not a prod cluster it's safe to delete resources on destroy"
  type        = string
  default     = "false"
}

variable "release_channel" {
  type        = string
  default     = "UNSPECIFIED"
  description = <<EOF
  The release channel of this cluster. Accepted values are `UNSPECIFIED`, `RAPID`, `REGULAR` and `STABLE`.

  Setting a release channel overrides the 'min_master_version' option.

  More information about release channels can be found here : https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels.
EOF
}

variable "enable_node_local_dns_cache" {
  description = "If this cluster want to have NodeLocal DNSCache enabled"
  type        = string
  default     = "false"
}
