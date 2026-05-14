# Azure Infrastructure Scripts

PowerShell and Azure CLI scripts focused on infrastructure administration, resource discovery and operational automation in Microsoft hybrid environments.

---

## Current Scripts

### Azure Discovery

Basic Azure infrastructure discovery script using Azure CLI and PowerShell.

The script currently enumerates:

- Resource Groups
- Storage Accounts
- Entra ID Users
- Entra ID Groups

---

### Azure VM Status Check

Basic Azure VM inventory and status script.

The script lists:

- Virtual Machines
- Resource Groups
- VM Size
- Azure Region
- Power State

---

### NSG Rules Report

Basic Azure NSG rules inventory script.

The script lists:

- NSG Rules
- Direction
- Protocol
- Ports
- Access Rules
- Priorities

---

## Technologies

- PowerShell
- Azure CLI
- Microsoft Entra ID
- Azure Resource Manager

---

## Usage

Login to Azure:

```powershell
az login
```

Run Azure Discovery:

```powershell
.\discovery\azure-discovery.ps1
```

Run VM Status Check:

```powershell
.\discovery\vm-status-check.ps1
```

---

## Repository Focus

This repository is focused on:

- Infrastructure administration
- Cloud resource visibility
- Hybrid Microsoft environments
- Operational automation
- PowerShell scripting
