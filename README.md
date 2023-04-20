# Frontend Workflow

This frontend workflow project has a unique approach compared to traditional frontend projects, which usually focus on aesthetics and frontend technology.
Instead, this project aims to showcase how various tools, such as Circle CI, collaborate to connect the frontend and infrastructure.

The Circle CI pipeline is central to the project, generating Terraform code based on the defined infrastructure as code. This code provisions the infrastructure for Amazon S3 and Cloudfront.
Additionally, Circle CI handles the deployment of the frontend application to S3 and Cloudfront, and once the deployment is complete, it sends a Slack notification.

The frontend portion of the project is built using React, TypeScript, Vite, and Tailwind CSS. However, the project's main focus is on the infrastructure and pipeline, so it is intentionally kept minimalistic.
The ultimate goal is to show how everything is interconnected using different tools.

## Architecture Diagram
![Architecture Diagram](https://pytech-assets.s3.ap-southeast-2.amazonaws.com/frontend-workflow-architecture.png)

The frontend application comprises three environments, namely develop, staging, and production (main). The workflow diagram illustrates the process, starting from the local environment and ending with the deployment to production.

When a commit is made to Github, the Circle CI pipeline is triggered, and it performs several checks, including build, lint, prettier check, and testing. Once these checks are passed, the pipeline provisions the necessary
Terraform code to create the S3 bucket and Cloudfront distribution, deploys the application to S3 and Cloudfront, and then sends a Slack notification.

The workflow diagram offers a clear visual representation of how the various tools are connected and how they work together to achieve the final deployment.

## Requirements
- Node 18.16.0 LTS
- NPM 8.x
- Circle CI account
- Terraform 1.x.x
- AWS account (Key Access and Secret Access)

## Installation

```bash
$ npm install
```

## How to run
### Local
To run the app in development mode locally, run the below command on the root directory:

```bash
$ npm run dev
```
A react app will up on on `http://localhost:3000/`.

## How to run tests
To run the tests, run the below command on the root directory:

```bash
$ npm run test
```

## Provisioning Terraform Locally
To provision the S3 bucket and Cloudfront distribution locally using Terraform, navigate to the Terraform directory and run the following command.
Ensure that you have configured your AWS credentials in the `~/.aws/credentials` file and have Terraform installed on your local machine.

Navigate to the terraform directory:

```bash
$ cd terraform
```

Initialize the terraform:

```bash
$ terraform init
```

Format the terraform code:

```bash
$ terraform fmt
```

Validate the terraform code:

```bash
$ terraform validate
```

Plan the terraform code:

```bash
$ terraform plan
```

Apply the terraform code (after the apply the S3 bucket and Cloudfront distribution will be created):

```bash
$ terraform apply
```

Destroy the terraform code (after the destroy the S3 bucket and Cloudfront distribution will be deleted)

```bash
$ terraform destroy
```





