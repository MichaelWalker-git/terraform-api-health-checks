# Terraform Project

This Terraform project is designed to automate the provisioning and management of infrastructure resources. 
It follows Infrastructure as Code (IaC) principles to create, update, and manage your infrastructure on various cloud providers.
Current project allows to do health checks for Lodestone API.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Folder Structure](#folder-structure)
- [Configuration](#configuration)
- [Usage](#usage)
- [Terraform Commands](#terraform-commands)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Ensure that you have the following prerequisites installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [Provider CLI](#) - (e.g., [AWS CLI](https://aws.amazon.com/cli/), [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli), etc.)

## Getting Started

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/terraform-api-health-checks.git
   cd terraform-api-health-checks
   ```

2. Initialize your Terraform configuration:

   ```bash
   terraform init
   ```

3. Customize the configuration according to your needs (see [Configuration](#configuration)).

4. Apply the Terraform configuration:

   ```bash
   terraform apply
   ```

## Folder Structure

The project structure is organized as follows:

```
terraform-api-health-checks/
│
├── main.tf             # Main Terraform configuration file
├── ecs.tf              # AWS configuration access
├── monitoring.tf       # Healthcheck endpoints
├── outputs.tf          # Healthcheck outputs
├── variables.tf        # Healthcheck variables
└── README.md           # Project documentation
```

## Configuration

Customize the configuration by editing the following files:

- `main.tf`: Main Terraform configuration.
- `variables.tf`: Declare and define input variables.
- `outputs.tf`: Declare and define output variables.
- ...

## Usage

After customizing the configuration files, run the following Terraform commands:

- `terraform init`: Initialize the Terraform configuration.
- `terraform plan`: View the execution plan.
- `terraform apply`: Apply the changes to create/update resources.

## Terraform Commands

- `terraform init`: Initializes the working directory.
- `terraform plan`: Generates an execution plan.
- `terraform apply`: Applies the changes required to achieve the desired state.
- `terraform destroy`: Destroys the Terraform-managed infrastructure.
- `terraform validate`: Validates the Terraform files.
- `terraform fmt`: Rewrites Terraform configuration files to a canonical format.
- `terraform version`: Shows the currently installed version of Terraform.

Refer to the [Terraform Documentation](https://www.terraform.io/docs/) for more details.

