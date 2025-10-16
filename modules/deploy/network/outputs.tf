output "vpc_ids" {
  value = { for K, V in module.vpc_module : K => V.vpc_id }
}

output "subnet_ids_by_type" {
  value = merge([
    for key, mod in module.subnets : {
      (mod.environment) = {
        (mod.subnet_type) = {
          (mod.availability_zone) = mod.subnet_id
        }
      }
    }
  ]...)
}