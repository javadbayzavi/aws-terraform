AWS Terraform Project

This repository contains Terraform modules to deploy AWS infrastructure including VPCs, subnets, and security groups. The project is organized with reusable modules for clean orchestration and layered deployment.

Project Structure
```
root/
  ├─ modules/
  │   ├─ deploy/
  │   │   ├─ main.tf
  │   │   ├─ network/
  │   │   │   ├─ main.tf
  │   │   │   ├─ vpc/
  │   │   │   │   ├─ main.tf
  │   │   │   │   ├─ variables.tf
  │   │   │   │   └─ outputs.tf
  │   │   │   ├─ subnets/
  │   │   │   │   ├─ main.tf
  │   │   │   │   ├─ variables.tf
  │   │   │   │   └─ outputs.tf
  │   │   │   └─ outputs.tf
  │   │   └─ providers.tf
  ├─ main.tf
  ├─ variables.tf
  ├─ outputs.tf
  └─ terraform.tfvars
```

Features
	•	Modular deployment using Terraform modules.
	•	VPC creation with multiple environments (test/prod).
	•	Subnet orchestration across multiple availability zones.
	•	Security Group creation per VPC.
	•	Outputs organized for easy reference by upper-layer modules.
	•	Parameterized configuration via terraform.tfvars.

Usage
	1.	Initialize Terraform:

terraform init


	2.	Plan the deployment:

terraform plan -var-file="terraform.tfvars"


	3.	Apply the deployment:

terraform apply -var-file="terraform.tfvars"


	4.	Destroy resources:

terraform destroy -var-file="terraform.tfvars"



Best Practices
	•	Use module outputs to pass values between layers.
	•	Keep sensitive variables in secure storage or encrypted tfvars files.
	•	Use provider aliases to manage multiple AWS accounts or roles.
	•	Maintain a clean folder structure to separate deploy, drift, and delete logic.
