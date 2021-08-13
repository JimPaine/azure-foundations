targetScope = 'managementGroup'

param groupName string
param parentId string
param subscriptions array
param policies array
param location string

resource management_group 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: groupName
  scope: tenant()

  properties: {
    displayName: groupName
    details: {
      parent: {
        id: parentId
      }
    }
  }

  resource subscription_move 'subscriptions@2021-04-01' = [for sub in subscriptions: {
    name: sub
  }]
}

module root_policies './policy-assignment.bicep' = [for (policy, i) in policies: {
  name: 'policy${i}${management_group.name}'
  scope: managementGroup(management_group.name)
  params: {
    policy: policy
    location: location
  }
}]
