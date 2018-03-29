#!/bin/bash

az group create --name myResourceGroup --location eastus

az vm create \
  --resource-group myResourceGroup \
  --name centos74 \
  --image OpenLogic:CentOS:7-CI:latest \
  --custom-data myScript.sh \
  --ssh-key-value @id_rsa.pub

az group create --name myResourceGroup2 --location eastus

az vm create \
  --resource-group myResourceGroup2 \
  --name centos74 \
  --image OpenLogic:CentOS:7-CI:latest \
  --custom-data cloud_init_hostname.txt \
  --ssh-key-value @id_rsa.pub