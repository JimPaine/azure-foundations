targetScope = 'managementGroup'

param rootGroupName string = 'azurefoundation'
param location string = 'uksouth'
param rootPolicies array
param landingZones object

resource root_group 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: rootGroupName
  scope: tenant()
}

module root_policies './policy-assignment.bicep' = [for (policy, i) in rootPolicies: {
  name: 'policy${i}'
  scope: managementGroup(root_group.name)
  params: {
    policy: policy
    location: location
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
