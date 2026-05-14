Write-Host ""
Write-Host "========== RESOURCE GROUPS ==========" -ForegroundColor Cyan

az group list `
  --query "[].{Name:name, Region:location, Status:properties.provisioningState}" `
  --output jsonc


Write-Host ""
Write-Host "========== STORAGE ACCOUNTS ==========" -ForegroundColor Green

az storage account list `
  --query "[].{Name:name, Region:primaryLocation, SKU:sku.name, Kind:kind}" `
  --output jsonc


Write-Host ""
Write-Host "========== ENTRA USERS ==========" -ForegroundColor Yellow

az ad user list `
  --query "[].{User:userPrincipalName, DisplayName:displayName}" `
  --output jsonc


Write-Host ""
Write-Host "========== ENTRA GROUPS ==========" -ForegroundColor Magenta

az ad group list `
  --query "[].{Group:displayName, Mail:mailNickname}" `
  --output jsonc
