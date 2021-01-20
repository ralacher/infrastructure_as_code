param location string = 'eastus2'
param storageAccountName string = 'sarlacherbicep'
param containerName string = 'datalake'

resource sa 'Microsoft.Storage/storageAccounts@2019-06-01' = {
    name: storageAccountName
    location: location
    kind: 'Storage'
    sku: {
        name: 'Standard_LRS'
    }
}

resource cn 'Microsoft.Storage/storageAccounts/blobServices/containers@2020-08-01-preview' = {
  name: containerName
  properties: {
    publicAccess: 'None'
  }
}