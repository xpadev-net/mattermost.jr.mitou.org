resource "google_project" "gcp_project" {
    
  name       = "MitouJr"
  project_id = "mitou-jr"
  billing_account     = "${var.billing_account}"
  skip_delete = true
}

resource "google_project_service" "compute" {
  service = "compute.googleapis.com"

  disable_dependent_services = true
}

resource "google_project_service" "container" {
  service = "container.googleapis.com"

  disable_dependent_services = true
}

resource "google_project_service" "sts" {
  service = "sts.googleapis.com"

  disable_dependent_services = true
}

resource "google_project_service" "cloud_resource" {
  service = "cloudresourcemanager.googleapis.com"

  disable_dependent_services = true
}

resource "google_project_service" "sql_admin" {
  service = "sqladmin.googleapis.com"

  disable_dependent_services = true
}