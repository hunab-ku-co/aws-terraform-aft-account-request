module "test8" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "leibnitz9+test8@gmail.com"
    AccountName               = "test8"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "miklas.siivonen@tietoevry.com"
    SSOUserFirstName          = "miklas"
    SSOUserLastName           = "siivonen"
  }
  account_tags = {
    "Update deployment" = "AFT"
  }
  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }
  custom_fields = {
    group = "non-prod"
  }
  account_customizations_name = "test8"
}