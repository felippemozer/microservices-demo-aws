# Use Terraform to deploy Online Boutique on a EKS cluster

This page walks you through the steps required to deploy the [Online Boutique](https://github.com/felippemozer/microservices-demo-aws) sample application on a [Elastic Kubernetes Service (EKS)](https://aws.amazon.com/pt/eks/) cluster using Terraform.

## Prerequisites

1. [Create an account or use an existing account](https://aws.amazon.com/pt/free/) on Amazon Web Services.

## Deploy the sample application

1. Clone the Github repository.

    ```bash
    git clone https://github.com/felippemozer/microservices-demo-aws.git
    ```

1. Move into the `terraform/aws` directory which contains the Terraform installation scripts.

    ```bash
    cd microservices-demo-aws/terraform/aws
    ```

1. (Optional) If you want to provision a [ElastiCache (Redis)](https://aws.amazon.com/pt/elasticache/) instance, you can set the value of `cachestore = true` in the `terraform.tfvars` file. (By default, `cachestore` is set as `false`)

1. Initialize Terraform.

    ```bash
    terraform init
    ```

1. See what resources will be created.

    ```bash
    terraform plan
    ```

1. Create the resources and deploy the sample.

    ```bash
    terraform apply
    ```

    1. If there is a confirmation prompt, type `yes` and hit Enter/Return.

    Note: This step can take about 10 minutes. Do not interrupt the process.

Once the Terraform script has finished, you can locate the frontend's external IP address to access the sample application.

- Option 1:

    ```bash
    kubectl get service frontend-external | awk '{print $4}'
    ```

<!-- TODO: Search information and change it on this option -->
- Option 2: On AWS Console, navigate to "Elastic Kubernetes Service" cluster and then "Services & Ingress" to locate the Endpoint associated with "frontend-external".

## Clean up

To avoid incurring charges to your AWS account for the resources used in this sample application, delete all the resources.

1. Navigate to the `terraform/aws` directory.

1. Run the following command:

   ```bash
   terraform destroy
   ```

   1. If there is a confirmation prompt, type `yes` and hit Enter/Return.
