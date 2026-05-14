Write-Host ""
Write-Host "========== NSG RULES REPORT ==========" -ForegroundColor Yellow

az network nsg rule list `
  --nsg-name $(az network nsg list --query "[0].name" -o tsv) `
  --resource-group $(az network nsg list --query "[0].resourceGroup" -o tsv) `
  --query "[].{
    Rule:name,
    Direction:direction,
    Access:access,
    Protocol:protocol,
    Port:destinationPortRange,
    Priority:priority
  }" `
  --output jsonc
