# azure-foundations
Templates and steps to take to manage management groups, subscriptions and policies
```
az role assignment create  --scope '/' --role 'Owner' --assignee-object-id $(az ad signed-in-user show --query objectId -o tsv)

```

```
az ad sp create-for-rbac --name "policyManager" --sdk-auth
```

```
az role assignment create  --scope '/providers/Microsoft.Management/managementGroups/azurefoundation' --role 'Resource Policy Contributor' --assignee-object-id {id}
```

az ad sp create-for-rbac \
  --name "policyManager" \
  --role "Resource Policy Contributor" \
  --scopes  "/providers/Microsoft.Management/managementGroups/azurefoundation" \
  --sdk-auth