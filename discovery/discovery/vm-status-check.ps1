Write-Host ""
Write-Host "========== AZURE VM STATUS ==========" -ForegroundColor Cyan

az vm list `
  --show-details `
  --query "[].{
    VM:name,
    ResourceGroup:resourceGroup,
    Location:location,
    Size:hardwareProfile.vmSize,
    PowerState:powerState
  }" `
  --output jsonc
