# Overview
To deploy, execute the following command:
```
az deployment group create \
--name ArmDemo \
--resource-group rg-arm-demo \
--template-file azuredeploy.json \
--parameters @azuredeploy.parameters.json
```