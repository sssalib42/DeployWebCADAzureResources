switch-azureMode -Name AzureResourceManager

# Gather user input
$subscription = Read-Host -Prompt 'Input your subscription name: '
$location = Read-Host -Prompt 'Input your prefered Azure regional location: '
$adminUsername = Read-Host -Prompt 'Input an admin username for the new VM: '
$adminPassword = Read-Host -Prompt 'Input an admin password for the new VM: '
$dnsNameForPublicIP = Read-Host -Prompt 'Input a dns name for Public IP: '

$resourceGroupName = "WebCAD"
$resourceGroupDeploymentName = "WebCad Deployment"

Add-AzureAccount

Select-AzureSubscription

New-AzureResourceGroup -Name $resourceGroupName -Location $location

$Deployment = @{
	Name = 'WebCAD_Deployment';
	ResourceGroupName = 'WebCADps';
	Mode = 'Complete';
	TemplateFile = "$PSScriptRoot\AzureVMsDeploy.json";
	TemplateParameterObject = @{
		newStorageAccountName = 'WebCAD_Storage';
		adminUsername = $adminUsername;
		adminPassword = $adminPassword;
		dnsNameForPublicIP = $dnsNameForPublicIP;
	}
}

New-AzureResourceGroupDeployment @Deployment;




