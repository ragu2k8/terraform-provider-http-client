terraform {
  required_providers {
    httpclient = {
      version = "0.0.6"
      source  = "ragu2k8/http-client"
    }
  }
}

data "httpclient_request" "req" {
  url = "http://httpbin.org/hidden-basic-auth/user/passwd"
  username = "user"
  password = "passwd"
  request_headers = {
    Content-Type: "application/x-www-form-urlencoded",
  }
  body = "scope=access"
}

output "response_body" {
  value = jsondecode(data.httpclient_request.req.response_body).authenticated
}

output "response_code" {
  value = data.httpclient_request.req.response_code
}

output "response_headers" {
  value = data.httpclient_request.req.response_headers
}
