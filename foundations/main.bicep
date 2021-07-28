targetScope = 'tenant'

param rootGroupName string = 'azurefoundation'
param location string = 'uksouth'
param rootPolicies array
param landingZones object

resource root_group 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: rootGroupName
}

resource root_assignments 'Microsoft.Authorization/policyAssignments@2019-09-01' = [for policy in rootPolicies: {
  name: policy.name
  location: location
  scope: root_group
  properties: {
      policyDefinitionId: policy.policyId
  }
  identity: {
    type: 'SystemAssigned'
  }
}]

module lz './landing-zones.bicep' = [for (group, i) in landingZones.groups: {
  name: 'lz${i}'
  params: {
    groupName: group.name
    parentId: root_group.id
    subscriptions: group.subscriptions
    policies: group.policies
    location: location
  }
}]
