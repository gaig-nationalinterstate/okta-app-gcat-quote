resource "okta_trusted_origin" "gcat-quote" {
  name   = "GCAT Quote"
  origin = "https://${var.env}gcatquote.natl.com"
  scopes = ["CORS", "REDIRECT"]
}