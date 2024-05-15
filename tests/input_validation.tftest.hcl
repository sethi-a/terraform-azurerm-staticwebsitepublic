variables {
  input = 0
  resource_group_name = "MyResour"
}

run "test_resource_group_creation" {
  command = plan
  
  assert {
    condition = startswith(azurerm_resource_group.resource_group.name, "repo-")
    error_message = "ResourceGroup Name ${var.resource_group_name} did not start with the expected value of ‘repo-****’."
  }
}
