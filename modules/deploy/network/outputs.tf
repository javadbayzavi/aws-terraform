output "vpc_ids" {
    value = { for K, V in module.vpc_module : K => V.vpc_id}
}
