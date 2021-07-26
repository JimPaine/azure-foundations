targetScope = 'tenant'

param rootGroupName string = 'azurefoundation'
param landingZones object = {
  groups: [
    {
      name: 'platform'
      subscriptions: [
        'a27694ef-7813-4276-aa21-b262283c2c4c'
      ]
    }
    {
      name: 'type1'
      subscriptions: [
        '255e829a-a95c-4583-8939-f5ae9a536fbe'
        'dcf5dff7-8e0f-4853-9219-13e73ee21f8f'
      ]
    }
  ]
}

resource root_group 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: rootGroupName
}

module lz './landing-zones.bicep' = [for (group, i) in landingZones.groups: {
  name: 'lz${i}'
  params: {
    groupName: group.name
    parentId: root_group.id
    subscriptions: group.subscriptions
  }
}]
