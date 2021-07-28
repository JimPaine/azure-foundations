# azure-foundations

The aim of Azure Foundations is to simplify the overhead of managaging a new environment while also reducing the risk of elevated permissions that are required for some of the core foundational work that is needed.

## Scope

Azure Foundations will aim to:

- create management groups
- move subscriptions into their required management groups
- assign built in policy set definitions (inititaves) to management groups.
- Outline the foundations for adding additional policies and inititaves via a dedicated workflow

## Out of scope

While the following items are out of scope there are some examples included in this repository.

- Hub resources
- Spoke resource
- Custom Policies

## Current limitations

## Roles

### Needed for management groups and subscription placement

> :warning: ideally only use this as a manual step via PIM and roll back once finished with it.

```
az role assignment create  --scope '/' --role 'Owner' --assignee-object-id $(az ad signed-in-user show --query objectId -o tsv)

```

### Needed for additional policy assignments ontop of foundation policies.

```
az ad sp create-for-rbac --name "policyManager" --sdk-auth
```

```
az role assignment create  --scope '/providers/Microsoft.Management/managementGroups/azurefoundation' --role 'Resource Policy Contributor' --assignee-object-id {id}
```

```
az ad sp create-for-rbac \
  --name "policyManager" \
  --role "Resource Policy Contributor" \
  --scopes  "/providers/Microsoft.Management/managementGroups/azurefoundation" \
  --sdk-auth
```

### deployment

```
az deployment tenant create \
  --name azure-foundations \
  --location "uksouth" \
  --template-file ./foundations/main.bicep \
  --parameters @./foundations/parameters.json
```
