resource "oci_data_safe_set_user_assessment_baseline_management" "data_safe_set_user_assessment_baseline_managements" {
  for_each = var.data_safe_set_user_assessment_baseline_managements

  compartment_id = each.value.compartment_id
  target_id      = each.value.target_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

