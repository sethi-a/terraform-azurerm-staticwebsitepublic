variables {
  resource_group_name = "MyResoursdfgd"
}

run "test_invalid_resource_group_creation" {
  command = plan

  expect_failures = [
    var.resource_group_name
  ]
}