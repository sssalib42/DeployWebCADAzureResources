# DeployWebCADAzureResources
A testing repository of deployment of the a demo WebCAD resource group on Azure Resource Manager. The resrource group will include two VMs and their configurations.

Please be sure to use the following naming convention:
1- Resource Group name: Can only include alphanumeric characters, periods, underscores, hyphens and parenthesis and cannot end in a period. (No spaces)

2- Domain name: Must conform to the following regular expression: ^[a-z][a-z0-9-]{1,61}[a-z0-9]$.

3- Storage Account name: Must consist of all lowercase letters and numbers (size: 3-24)

4- VMs Admin Username: Must conform to the following regular expresssion:  ^[a-z][a-z0-9-]{1,61}[a-z0-9]$

5- VMs Admin Password: The supplied password must be between 8-123 characters long and must satisfy at least 3 of password complexity requirements from the following: 1) Contains an uppercase character 2) Contains a lowercase character 3) Contains a numeric digit 4) Contains a special character.

6- Redis cache name: It can only contain letters, numbers and hyphens. The first and last characters must each be a letter or a number. 

<a href="https://deploy.azure.com/?repository=https://github.com/sssalib42/DeployWebCADAzureResources#/form/setup" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
