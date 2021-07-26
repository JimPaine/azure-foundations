targetScope = 'tenant'

param groupName string
param parentId string
param subscriptions array


resource management_group 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: groupName

  properties: {
    displayName: groupName
    details: {
      parent: {
        id: parentId
      }
    }
  }
}

resource subscription_move 'Microsoft.Management/managementGroups/subscriptions@2021-04-01' = [for sub in subscriptions: {
  name: sub
  parent: management_group
}]
