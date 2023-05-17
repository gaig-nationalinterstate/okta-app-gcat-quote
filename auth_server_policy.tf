resource "okta_auth_server_policy" "gcat-quote-policy" {
  auth_server_id   = okta_auth_server.gcat-quote-auth-server.id
  client_whitelist = [okta_app_oauth.gcat-quote.id]
  description      = "GCAT Quote Access Policy"
  name             = "GCAT Quote Access Policy"
  priority         = "1"
  status           = "ACTIVE"
}

# Policy Rule
resource "okta_auth_server_policy_rule" "gcat-quote-rule" {
  auth_server_id       = okta_auth_server.gcat-quote-auth-server.id
  policy_id            = okta_auth_server_policy.gcat-quote-policy.id
  status               = "ACTIVE"
  name                 = "GCAT Quote Default Policy Rule"
  priority             = 1
  grant_type_whitelist = ["authorization_code", "implicit"]
}