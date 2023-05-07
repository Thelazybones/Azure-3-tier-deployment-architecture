# Azure-3-tier-deployment-architecture
WEB - APP - DATABASE
# Summary of the architecture
1. One virtual network tied in three subnets.
2. First 2 subnet will have one virtual machine each and last subnet(db-subnet) has a azure SQL DB deployed.
3. First virtual machine -> allow inbound traffic from internet only.
4. Second virtual machine -> entertain traffic from first virtual machine only and can reply the same virtual machine again.
5. App can connect to database and database can connect to app but database cannot connect to web.

# Module

Down the line used different modules in order to have a 3-tier-deployment-architecture:
1. resourcegroup - Creating Resourcegroup
2. networking - Creating azure virtual network and required subnets
3. securitygroup - Creating network security group, setting desired security rules and associating them to subnets
4. compute - Creating availability sets, network interfaces and virtual machines
5. database - Creating database server and database
6. Keyvault - Azure keyvault to store keys and certificates
7. storage - A storage account to have remote backend state files save. 
8. password generator- A random password generator to keep the db login details.


# Folder Structure

1.  |-- backend      [This will create a backed storage account to save the terraform backend state ]
2.  |-- infra        [This has the main.tf whhich will provision the 3 tier architecture , tfvars - contains inputs to variables defined ]
3.  |-- modules      [Containes all the modules used in provisioning 3 tier architecture ]

# What Files To Change While Deployment 
1. backend - tfvars - dev.tfvars
2. infra - tfvars - dev.tfvars

