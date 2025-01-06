# ASP Containerlab

ASP Containerlab is a pre-built environment meant to be run on Cisco's dcloud infrastructure.  The dcloud VM can access both public docker repos and has read access to pull from a  central repository of images stored on a private repo.  There is a collection of pre-built labs that leverage the VM's setup as a way to reduce the amount of time to create/build/configure a working lab/demo. These labs are stored in github and accessable via the dcloud VM. 

The ASP Containerlab enviornment consists of the following:
- Large VM for running the containers using containerlab (http://containerlab.dev)
- Small/Medium VM for running a preconfigured telemetry stack (Telegraf/Influx/Grafana)
- A Windows VM if you wish to access the devices using a remote desktop client

## Management Network
dcloud has a flat management network for which the virtual machines attach via the host VM.  
- All containers on the host have at least 1 management interface and those are bridged to the flat management network (198.18.128.0/18)
- routers in a lab have a dedicated management interface. 
- All management interfaces are are in a management VRF
- Management IP addresses are directly acccessable from either the VPN client or any host. 

## Automated Labs
There are a few automated labs that are prebuilt.  
- clab yaml file that describes the lab topology
- Ansible playbook 
- Builds the configuration for each device based upon device-level or global variables
- Uses NAPALM to test or deploy the assembled configuration to the devices using NETCONF

## Getting Started
Start your dcloud instance

Use the Cisco Secure Client to VPN into the dcloud instance.  

Access the Containerlab VM

Initialize the controller
The lab controller is a simple python script that ensures that you have both any new labs that have been created and the most up to date versions of those labs.
Each lab has it's own github repository which contains at minimum the containerlab topology file, management network configuration, node definitions, and versions of code

Change directories to the desired lab

Start the lab topology 
sudo clab deploy


## Automated Lab Configuration 
Once the lab topology is fully running, you can build the configurations and commit them to each device using the ansible playbook. 

From the lab directory run:

```
./config_lab
```


