targetScope = 'managementGroup'

param policy object
param location string

resource root_assignments 'Microsoft.Authorization/policyAssignments@2020-09-01' = {
  name: policy.name
  location: location

  properties: {
      policyDefinitionId: policy.policyId
  }
  identity: {
    type: 'SystemAssigned'
  }
}
