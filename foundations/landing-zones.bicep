targetScope = 'tenant'

param groupName string
param parentId string
param subscriptions array
param policies array
param location string

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

resource root_assignments 'Microsoft.Authorization/policyAssignments@2019-09-01' = [for policy in policies: {
  name: policy.name
  location: location
  scope: management_group
  properties: {
      policyDefinitionId: policy.policyId
  }
  identity: {
    type: 'SystemAssigned'
  }
}]
