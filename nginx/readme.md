# Install Nginx on a Ubuntu Virtual Machine using Cloud-Init

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Falihhussain%2Fazure-cloud-init%2Fmaster%2Fnginx%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Falihhussain%2Fazure-cloud-init%2Fmaster%2Fnginx%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template deploys a Nginx web server on a Ubuntu Virtual Machine. This template also deploys a Public IP address, Network Security Group, Virtual Network, Network Interface, and a Virtual Machine.

1. To deploy the template:
```bash
export rgName="nginxCloudInit" && \
export rgLocation="eastus" && \
az group create -l $rgLocation -n $rgName && \
az group deployment create --name MasterDeployment --resource-group $rgName --template-file ./azuredeploy.json
```

To view the output:
```bash
az group deployment show -n MasterDeployment -g $rgName | jq .properties.outputs.http.value
```



```bash
cd /var/lib/cloud/instances
vim user-data.txt
cat /var/log/cloud-init.log | grep config-scripts-user
cat /var/log/boot.log
```
