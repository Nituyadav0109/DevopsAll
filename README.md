DevOpsAll
Step 1: Install Docker on Local Machine

Step 2: Install Terraform on Local Machine
Commands to Install Terraform (Ubuntu/Debian):

sudo apt update && sudo apt upgrade -y
sudo apt install -y curl gnupg
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform -y
terraform --version

Step 3: Run Terraform Commands
Use the following commands to initialize and apply your Terraform configuration:

terraform init
terraform plan
terraform apply

Notes
Ensure Docker is running before applying Terraform if you plan to manage Docker resources.
Verify that Terraform is installed correctly by running terraform --version.
