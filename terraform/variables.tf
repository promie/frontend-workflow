variable "prefix" {
  default = "frontend-workflow"
}

variable "project" {
  default = "frontend-workflow"
}

variable "custom_error_response" {
  type = list(object({
    error_caching_min_ttl = number
    error_code            = number
    response_code         = number
    response_page_path    = string
  }))

  description = "List of one or more custom error response element maps"
  default = [
    {
      error_caching_min_ttl = 10 // Seconds
      error_code            = 400
      response_code         = 200
      response_page_path    = "/index.html"
    },
    {
      error_caching_min_ttl = 10 // Seconds
      error_code            = 403
      response_code         = 200
      response_page_path    = "/index.html"
    },
    {
      error_caching_min_ttl = 10 // Seconds
      error_code            = 404
      response_code         = 200
      response_page_path    = "/index.html"
    },
    {
      error_caching_min_ttl = 10 // Seconds
      error_code            = 405
      response_code         = 200
      response_page_path    = "/index.html"
    },
  ]
}
