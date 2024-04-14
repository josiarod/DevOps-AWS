# Terraform AWS EC2 Instance

## Prerequisites

Ensure you have the following setup before proceeding:
- **Terraform**: Installed on your local machine.
- **AWS Account**: Active, with appropriate permissions.
- **AWS CLI**: Configured with credentials.

## Setup and Deployment

### Initialize Terraform

Initialize your Terraform environment to prepare for executing the configurations:

```bash
terraform init
```
### Plan Deployment

Preview the actions Terraform will execute without making any changes:

```bash
terraform plan
```

### Apply Configuration

Deploy the EC2 instance by applying your Terraform configuration:

```bash
terraform apply
```

You'll need to approve this action when prompted.

### Verify the Instance

Check your AWS console to ensure the EC2 instance is running as expected.

Configuration Details
Region: Configured for us-west-2.
AMI: Uses Amazon Linux 2 AMI (ami-051f8a213df8bc089). This can be updated to any AMI you prefer.
Instance Type: t2.micro, suitable for testing within the AWS free tier.

### Cleaning Up

To dismantle the EC2 instance and associated resources, use:

```bash
terraform destroy
```

Approve the destruction when prompted to clean up and avoid incurring extra charges.
