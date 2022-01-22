# HTTP Provider

A terraform HTTP provider for interacting with HTTP servers. It's an alternative to the hashicorp http provider.

## Example Usage

```terraform
terraform {
  required_providers {
    httpclient = {
      version = "0.0.6"
      source  = "ragu2k8/http-client"
    }
  }
}

data "httpclient_request" "req" {
  ....
}
```
