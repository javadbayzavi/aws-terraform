# AI Agent Instructions for EBS Terraform Project

## Project Architecture

This project is a Terraform infrastructure-as-code implementation for AWS EBS (Elastic Block Store) deployments. The codebase follows a modular structure:

```
ebs-terraform/
├── modules/               # Reusable infrastructure components
│   └── deploy/           # Main deployment modules
│       ├── compute/      # EC2 and compute resources
│       ├── elb/         # Load balancer configurations
│       ├── network/     # Network infrastructure
│       └── roles/       # IAM roles and policies
├── env/                  # Environment-specific configurations
│   ├── dev.tfvars       # Development environment variables
│   └── prod.tfvars      # Production environment variables
└── deploy/              # Deployment orchestration
```

## Key Concepts

1. **Module Organization**: All reusable infrastructure components are in the `modules/` directory. Reference module `main.tf` files for implementation details.

2. **Environment Management**: The project supports multiple environments through `env/*.tfvars` files. Always check `variables.tf` for available configuration options.

3. **Network Architecture**: Network components (VPC, subnets) are defined in `modules/deploy/network/`. VPC configuration is in `vpc/main.tf`.

## Common Workflows

### Infrastructure Deployment
```bash
# Initialize Terraform working directory
terraform init

# Plan changes for specific environment
terraform plan -var-file=env/dev.tfvars  # For development
terraform plan -var-file=env/prod.tfvars  # For production

# Apply changes
terraform apply -var-file=env/dev.tfvars
```

### Infrastructure Modifications

1. Module changes should be made in respective `modules/*/main.tf` files
2. Environment-specific variables should be added to both:
   - `variables.tf` (with descriptions and defaults)
   - Relevant `env/*.tfvars` files

## Project Conventions

1. **Resource Naming**: Resources should use the pattern `${var.environment}-${var.resource_name}` for consistent identification

2. **Variable Definitions**: All variables must include:
   - Type declaration
   - Description
   - Default value (when appropriate)

3. **Module Structure**: Each module should contain:
   - `main.tf` - Main resource definitions
   - `variables.tf` - Input variables
   - `outputs.tf` - Output declarations

## Integration Points

- AWS Provider configuration in `providers.tf`
- State management is local (see `terraform.tfstate`)
- Environment-specific configurations in `env/*.tfvars`

## Common Pitfalls

1. Always run `terraform plan` before applying changes
2. Check for resource dependencies in module outputs
3. Verify AWS credentials are properly configured before operations