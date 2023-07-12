resource "google_compute_region_network_endpoint_group" "function_neg1" {
  name                  = "function-neg1"
  network_endpoint_type = "SERVERLESS"
  region                = "us-central1"
  cloud_function {
    function = var.function_name
  }
}
resource "google_compute_region_network_endpoint_group" "function_neg2" {
  name                  = "function-neg2"
  network_endpoint_type = "SERVERLESS"
  region                = "northamerica-northeast1"
  cloud_function {
    function = var.function_name
  }
}

resource "google_cloudfunctions_function" "function_neg" {
  name        = "function-neg"
  description = "My function"
  runtime     = "nodejs10"
}