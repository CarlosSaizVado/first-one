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
│   ├── azure_firewall       # Module for creating Azure Firewall
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
│   ├── azure_backup        # Module for creating Azure Backup (Recovery Services Vault)
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── microsoft_defender_for_cloud
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
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

-Resource Group: Creates an Azure Resource Group.
-Storage Account: Creates an Azure Storage Account and Container.
-Key Vault: Creates an Azure Key Vault and manages Secrets.
-Network: Creates a Virtual Network, Subnets, Network Security Groups, Public IP Addresses, and Network Interfaces.
-Virtual Machine: Provisions an Azure Virtual Machine and associates it with Network Interfaces.
-Azure Firewall: Creates an Azure Firewall, including IP configuration, Network Rule Collections, and Application Rule Collections.
-Azure Backup: Creates a Recovery Services Vault and configures Backup Policies for Virtual Machines.
-Microsoft Defender for Cloud: Enables Microsoft Defender for Cloud (Security Center) at the subscription level for specific resource types and applies the Standard protection plan.

## Conclusion

This project provides a modular approach to deploying Azure resources using Terraform. You can easily extend it by adding more modules or modifying existing ones as per your requirements.
