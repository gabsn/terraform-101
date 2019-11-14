provider "google" {
  project = "terraform-101-259013"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_sql_database_instance" "test-db" {
  name = "test-for-terraform-tutorial"
  database_version = "POSTGRES_9_6"
  region = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
}

# resource "google_sql_database" "test-database" {
#     name = "db-for-tf-tutorial"
#     instance = "${google_sql_database_instance.test-db.name}"
# }

# resource "google_sql_user" "software-engineer" {
#   name     = "software-enginer"
#   instance = "${google_sql_database_instance.test-db.name}"
#   password = "changeme"
# }