module "test2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "leibnitz9+test2@gmail.com"
    AccountName               = "test2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "victor.morales@tietoevry.com"
    SSOUserFirstName          = "V"
    SSOUserLastName           = "M"
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

  account_customizations_name = "klz_type1"
}
