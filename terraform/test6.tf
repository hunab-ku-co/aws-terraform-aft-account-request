module "test6" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "leibnitz9+test6@gmail.com"
    AccountName               = "test6"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "miklas.siivonen@tietoevry.com"
    SSOUserFirstName          = "Miklas"
    SSOUserLastName           = "Siivonen"
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
  account_customizations_name = "test6"
}