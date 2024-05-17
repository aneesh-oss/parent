resource "newrelic_alert_policy" "my-policy" {
  for_each = var.alert_policies
  name = each.key
  incident_preference = each.value
}