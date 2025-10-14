output "vpc_ids" {
    value = { for K, V in module.vpc : K => V.vpc_id}
}
