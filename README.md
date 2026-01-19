# Proyect Terraform

This project is designed to provision various Azure resources using Terraform. It is structured into modules for better organization and reusability. Below is an overview of the project structure and how to use it.

## Project Structure

```
Proyect_Terraform
├── main.tf                  # Entry point for the Terraform configuration
├── variables.tf             # Input variables for the configuration
├── outputs.tf               # Outputs of the Terraform configuration
├── terraform.tfvars         # Values for the input variables
├── modules                  # Contains all the resource modules
│   ├── resource_group       # Module for creating Azure Resource Group
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── storage_account      # Module for creating Azure Storage Account
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── key_vault            # Module for creating Azure Key Vault
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── network              # Module for creating Azure Network resources
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── virtual_machine      # Module for creating Azure Virtual Machine
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── kubernetes_cluster   # Module for creating Azure Kubernetes Service
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── kubernetes_nginx     # Module for creating NGINX deployment in Kubernetes
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── README.md                # Documentation for the project
```

## Getting Started

1. **Prerequisites**: Ensure you have Terraform installed and configured on your machine. You will also need an Azure account.

2. **Clone the Repository**: Clone this repository to your local machine.

3. **Configure Variables**: Update the `terraform.tfvars` file with your specific configurations, such as resource names, locations, and other parameters.

4. **Initialize Terraform**: Navigate to the project directory and run the following command to initialize Terraform:

   ```
   terraform init
   ```

5. **Plan the Deployment**: Run the following command to see what resources will be created:

   ```
   terraform plan
   ```

6. **Apply the Configuration**: If everything looks good, apply the configuration to create the resources:

   ```
   terraform apply
   ```

7. **Outputs**: After the deployment is complete, you can check the outputs defined in `outputs.tf` to get information about the created resources.

## Modules

Each module is responsible for creating a specific Azure resource. The modules are organized as follows:

- **Resource Group**: Creates an Azure Resource Group.
- **Storage Account**: Creates an Azure Storage Account and Container.
- **Key Vault**: Creates an Azure Key Vault and Secrets.
- **Network**: Creates a Virtual Network, Subnet, Network Security Group, and Network Interface.
- **Virtual Machine**: Provisions an Azure Virtual Machine.
- **Kubernetes Cluster**: Sets up an Azure Kubernetes Service (AKS) cluster.
- **Kubernetes NGINX**: Deploys an NGINX application in the Kubernetes cluster.

## Conclusion

This project provides a modular approach to deploying Azure resources using Terraform. You can easily extend it by adding more modules or modifying existing ones as per your requirements.