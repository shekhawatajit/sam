# Kubernetes Cluster on Azure using Terraform

This project provides a Terraform configuration to create a Kubernetes cluster on Azure, specifically designed for developers in the Germany region.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- An Azure account with sufficient permissions to create resources.
- Azure CLI installed and configured.

## Project Structure

```
terraform-azure-k8s
├── main.tf               # Main configuration for the Terraform project
├── variables.tf          # Input variables for the Terraform configuration
├── outputs.tf            # Output values returned after execution
├── provider.tf           # Provider configuration for Azure
├── modules
│   └── k8s-cluster
│       ├── main.tf       # Module definition for the Kubernetes cluster
│       ├── variables.tf  # Input variables specific to the k8s-cluster module
│       └── outputs.tf    # Output values for the k8s-cluster module
├── .gitignore            # Files and directories to ignore by Git
└── README.md             # Project documentation
```

## Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/terraform-azure-k8s.git
   cd terraform-azure-k8s
   ```

2. **Configure your Azure credentials:**

   Make sure you are logged in to your Azure account using the Azure CLI:

   ```bash
   az login
   ```

3. **Modify the variables:**

   Update the `variables.tf` file to set your desired configuration for the Kubernetes cluster, such as the cluster name, location, and node count.

4. **Initialize Terraform:**

   Run the following command to initialize the Terraform configuration:

   ```bash
   terraform init
   ```

5. **Plan the deployment:**

   Generate an execution plan to see what resources will be created:

   ```bash
   terraform plan
   ```

6. **Apply the configuration:**

   Deploy the Kubernetes cluster by applying the configuration:

   ```bash
   terraform apply
   ```

7. **Access your Kubernetes cluster:**

   After the deployment is complete, you can access your Kubernetes cluster using the provided output values.

## Cleanup

To destroy the resources created by Terraform, run:

```bash
terraform destroy
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.