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


