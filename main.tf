module "alert_policy" {
  source = "./child_module"
  alert_policies = var.alert_policies

}


variable "alert_policies" {
  type = map(string)
  default = {
    "ApplicationErrorRate"        = "PER_POLICY" 
    "ServerCPUUtilization"        = "PER_POLICY" 
    "KeyTransactionResponseTime"  = "PER_POLICY" 
  }
}