output "vpc_test_id" {
  description = "The ID of the VPC Test"
  value       = module.vpc_test.this.vpc_id

output "vpc_prod_id" {
  description = "The ID of the VPC Production"
  value       = module.vpc_prod.this.vpc_id  

