# Jenkins_High_Availability
Setting up Jenkins High Availability on AWS using Autoscaling Group. Tools - Packer, Ansible, Terraform, AWS EFS

Tools : Packer, Ansible, Terraform
Aws - Services: IAM, EFS, AWS Parameter Store, Autoscalling group, Application Loadbalancer

Steps:
1. Create VPC and subnets
2. Provision EFS storage using Terraform. This will ensure that the Jenkins controller instance can mount the EFS filesystem from any of the availability zones.
3. Create SSH keys and store them in AWS Parameter store
4. Use Packer and Ansible roles to build the controller and agent AMIs, including the necessary applications and configurations. After building the AMIs, deploy them using Terraform.
5. Use Terraform to deploy the controller AMI in an auto-scaling group with minimum, maximum, and desired values set to 1. 
6. After deploying the Jenkins controller, we will use Terraform to deploy an agent server.
7. we will validate the Jenkins controller and agent setup with the necessary configurations, ensuring that our Jenkins setup functions as expected.
