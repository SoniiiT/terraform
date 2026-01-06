resource "dns_ptr_record" "ptr" {
  for_each = var.ptr_records

  zone = var.reverse_dns_zone
  name = each.value.name
  ptr  = each.value.ptr
  ttl  = coalesce(each.value.ttl, var.dns_ttl)
}
