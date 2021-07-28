# Built In Policy Sets (Inititaves)

## Obtained using the the azure cli

```
az policy set-definition list --query '[].{displayName:displayName, id:id}' -o json'
```

| Name | Id |
| ---- | -- |
|[Preview]: NIST SP 800-171 R2|/providers/Microsoft.Authorization/policySetDefinitions/03055927-78bd-4236-86c0-f36125a10dc9|
|Audit machines with insecure password security settings|/providers/Microsoft.Authorization/policySetDefinitions/095e4ed9-c835-4ab6-9439-b5644362a06c|
|IRS1075 September 2016|/providers/Microsoft.Authorization/policySetDefinitions/105e0327-6175-4eb2-9af4-1fba43bdb39d|
|Configure Azure Monitor Agent to Linux virtual machines and associate to Data Collection Rule|/providers/Microsoft.Authorization/policySetDefinitions/118f04da-0375-44d1-84e3-0fd9e1849403|
|Deploy prerequisites to enable Guest Configuration policies on virtual machines|/providers/Microsoft.Authorization/policySetDefinitions/12794019-7a00-42cf-95c2-882eed337cc8|
|[Preview]: NIST SP 800-53 Rev. 5|/providers/Microsoft.Authorization/policySetDefinitions/179d1daa-458f-4e47-8086-2a68d0d6c38f|
|CIS Microsoft Azure Foundations Benchmark v1.1.0|/providers/Microsoft.Authorization/policySetDefinitions/1a5bb27d-173f-493e-9568-eb56638dde4d|
|Azure Security Benchmark|/providers/Microsoft.Authorization/policySetDefinitions/1f3afdf9-d0c9-4c3d-847f-89da613e70a8|
|[Preview]: Australian Government ISM PROTECTED|/providers/Microsoft.Authorization/policySetDefinitions/27272c0b-c225-4cc3-b8b0-f2534b093077|
|UK OFFICIAL and UK NHS|/providers/Microsoft.Authorization/policySetDefinitions/3937f550-eedd-4639-9c5e-294358be442e|
|[Preview]: Configure Azure Defender for SQL agents on virtual machines|/providers/Microsoft.Authorization/policySetDefinitions/39a366e6-fdde-4f41-bbf8-3757f46d1611|
|[Preview]: SWIFT CSP-CSCF v2020|/providers/Microsoft.Authorization/policySetDefinitions/3e0c67fc-8c7c-406c-89bd-6b6bdc986a22|
|PCI v3.2.1:2018|/providers/Microsoft.Authorization/policySetDefinitions/496eeda9-8f2f-4d5e-8dfd-204f0a92ed41|
|Canada Federal PBMM|/providers/Microsoft.Authorization/policySetDefinitions/4c4a5f27-de81-430b-b4e5-9cbd50595a87|
|Enable Azure Monitor for VMs|/providers/Microsoft.Authorization/policySetDefinitions/55f3eceb-5573-4f18-9695-226972c6d74a|
|CIS Microsoft Azure Foundations Benchmark v1.3.0|/providers/Microsoft.Authorization/policySetDefinitions/612b5213-9160-4969-8578-1518bd2a000c|
|Flow logs should be configured and enabled for every network security group|/providers/Microsoft.Authorization/policySetDefinitions/62329546-775b-4a3d-a4cb-eb4bb990d2c0|
|Enable Azure Monitor for Virtual Machine Scale Sets|/providers/Microsoft.Authorization/policySetDefinitions/75714362-cae7-409e-9b99-a8e5075b7fad|
|ISO 27001:2013|/providers/Microsoft.Authorization/policySetDefinitions/89c6cddc-1c73-4ac1-b19c-54d1a15a42f2|
|[Preview]: Motion Picture Association of America (MPAA)|/providers/Microsoft.Authorization/policySetDefinitions/92646f03-e39d-47a9-9e24-58d60ef49af8|
|Configure Azure Monitor Agent to Windows virtual machines and associate to Data Collection Rule|/providers/Microsoft.Authorization/policySetDefinitions/9575b8b7-78ab-4281-b53b-d3c1ace2260b|
|[Preview]: Enable Data Protection Suite|/providers/Microsoft.Authorization/policySetDefinitions/9cb3cc7a-b39b-4b82-bc89-e5a5d9ff7b97|
|[Preview]: Configure machines to automatically install the Azure Monitor and Azure Security agents on virtual machines|/providers/Microsoft.Authorization/policySetDefinitions/a15f3269-2e10-458c-87a4-d5989e678a73|
|HITRUST/HIPAA|/providers/Microsoft.Authorization/policySetDefinitions/a169a624-5599-4385-a696-c8d643089fab|
|Kubernetes cluster pod security baseline standards for Linux-based workloads|/providers/Microsoft.Authorization/policySetDefinitions/a8640138-9b0a-4a28-b8cb-1666c838647d|
|[Preview]: CMMC Level 3|/providers/Microsoft.Authorization/policySetDefinitions/b5629c75-5c77-4422-87b9-2509e680f8de|
|[Preview]: Windows machines should meet requirements for the Azure compute security baseline|/providers/Microsoft.Authorization/policySetDefinitions/be7a78aa-3e10-4153-a5fd-8c6506dbc821|
|Enable Azure Cosmos DB throughput policy|/providers/Microsoft.Authorization/policySetDefinitions/cb5e1e90-7c33-491c-a15b-24885c915752|
|NIST SP 800-53 Rev. 4|/providers/Microsoft.Authorization/policySetDefinitions/cf25b9c1-bd23-4eb6-bd2c-f4f3ac644a5f|
|[Preview]: New Zealand ISM Restricted|/providers/Microsoft.Authorization/policySetDefinitions/d1a462af-7e6d-4901-98ac-61570b4ed22a|
|FedRAMP High|/providers/Microsoft.Authorization/policySetDefinitions/d5264498-16f4-418a-b659-fa7ef418175f|
|Configure Advanced Threat Protection to be enabled on open-source relational databases|/providers/Microsoft.Authorization/policySetDefinitions/e77fc0b3-f7e9-4c58-bc13-cb753ed8e46e|
|FedRAMP Moderate|/providers/Microsoft.Authorization/policySetDefinitions/e95f5a9f-57ad-4d03-bb0b-b1d16db93693|