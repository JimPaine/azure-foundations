# azure-foundations
Templates and steps to take to manage management groups, subscriptions and policies
```
az role assignment create  --scope '/' --role 'Owner' --assignee-object-id $(az ad signed-in-user show --query objectId -o tsv)

```