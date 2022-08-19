# Verify pods are running or need to run .setup.sh
kubectl get pods --all-namespaces

kubectl  config get-contexts
kubectl  get namespaces -A
kubectl cluster-info

# Install Armory CLI
curl -sL go.armory.io/get-cli | bash
export PATH="$HOME/.avm/bin:$PATH"


# Install the RNA (Remote Network Agents)
bash <(curl -sL https://go.armory.io/get-armory-rna) "instruqt" "bMBXKHEY2EuK0Y87NH4QGNkypmyw0I5S" "HMSjKX3QBmODu7d0AbJstocFdOT2UdbiJK8p2e74XHvfBRlFnEZZ2XlBrLminxTG"

# Kepp checking using the command below until rna is "READY (1/1)" and "Running"
kubectl get pods -n armory-rna

# Log into Armory Cloud using new credentials
armory login -c "bMBXKHEY2EuK0Y87NH4QGNkypmyw0I5S" -s "HMSjKX3QBmODu7d0AbJstocFdOT2UdbiJK8p2e74XHvfBRlFnEZZ2XlBrLminxTG"
