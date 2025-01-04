#!/bin/bash

set -e

# Function to install kubectl
install_kubectl() {
  echo "Installing kubectl..."
  KUBECTL_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
  curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
  chmod +x kubectl
  sudo mv kubectl /usr/local/bin/
  echo "kubectl installed successfully."
  kubectl version --client
}

# Function to install eksctl
install_eksctl() {
  echo "Installing eksctl..."
  EKSCTL_LATEST_URL="https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Linux_amd64.tar.gz"
  curl -LO "${EKSCTL_LATEST_URL}"
  tar -xzf eksctl_Linux_amd64.tar.gz -C /tmp
  sudo mv /tmp/eksctl /usr/local/bin/
  rm -f eksctl_Linux_amd64.tar.gz
  echo "eksctl installed successfully."
  eksctl version
}

# Main installation process
main() {
  echo "Starting installation of kubectl and eksctl..."

  install_kubectl
  install_eksctl

  echo "Installation completed."
}

# Execute the script
main
