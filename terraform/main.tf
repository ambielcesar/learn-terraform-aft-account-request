module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cambiel+sandboxaft1@amazon.com"
    AccountName               = "sandbox-aft1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "cambiel+sandboxaft1@amazon.com"
    SSOUserFirstName          = "Sandbox1"
    SSOUserLastName           = "AFT1"
  }

  account_tags = {
    "Project Owner" = "cambiel@amazon.com"
    "Learn Tutorial" = "AFT"
    "Learn Environment" = "DEV"
    "Learn CostCenter" = "123456"
    "Lear BUCode" = "ABC003"
    "Learn Project" = "ControlTower - AFT"
  }

  change_management_parameters = {
    change_requested_by = "Cesar Ambiel - Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
