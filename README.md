## Terraform Samples

**Infrastructure as Code (IaC) examples using Terraform for AWS.**

### Requirements
You need to have Terraform CLI installed and authenticated in a valid AWS Account.

 * **[AWS Account](https://signin.aws.amazon.com/)**
 * **[Terraform CLI](https://developer.hashicorp.com/terraform/install)**

### Commands
You can try the demos executing the following commands in each folder you want.

**1. Initialize Terraform**

It'll create configuration files required to work with Terraform.
``` bash
terraform init
```
**2. Create resources**

The command will apply to cloud the changes defined in Terraform plan.
``` bash
terraform apply
```
**3. Destroy resources**

At the end, you can remove existing resources executing this command.
``` bash
terraform destroy
```