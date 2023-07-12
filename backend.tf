resource "google_compute_backend_service" "default" {
  provider = google-beta
  name                            = "backend-service"
  enable_cdn                      = true
  timeout_sec                     = 10
  connection_draining_timeout_sec = 10

  custom_request_headers          = ["host: ${google_compute_global_network_endpoint.proxy.fqdn}"]
  custom_response_headers         = ["X-Cache-Hit: {cdn_cache_status}"]

  backend {
    group = google_compute_global_network_endpoint_group.external_proxy.url
  }
}
