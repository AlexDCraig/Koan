## Spinning up a test cluster

- Sign up for GCP free tier and create a Koan project.
- Install Terraform.
- Create a service account for the project under IAM & admin.
- Enable the Kubernetes Engine API for the Koan project.
- Generate a key for the service account and store it as ``account.json`` in this directory.
- Modify ``variables.tf`` to include your specific project ID under the ``project_id`` variable.
- Initialize Terraform with a ``terraform init``. Run a plan operation with ``terraform plan``. If the results look good, execute the plan with ``terraform apply``.
